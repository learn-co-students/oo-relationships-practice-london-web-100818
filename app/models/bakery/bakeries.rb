class Bakery
    attr_accessor :name

    @@all = []

    # a bakery has many desserts

    def initialize(name)
        @name = name
        @@all << self
    end

    def create_a_dessert(name)
        Dessert.new(name, self)
    end

    def add_ingredient(ingredient, calorie)
        Ingredient.new(ingredient, calorie)
    end

    def create_a_recipe(dessert, ingredients)
        ingredients.each { |i| DessertIngredient.new(dessert,i) }
    end

    def desserts
        # return desserts of that bakery
        Dessert.all.select { |d| d.bakery == self }
    end
    
    def ingredients
        # return ingredients of that bakery
        DessertIngredient.all
        .select { |di| di.dessert.bakery == self}
        .map { |di| di.ingredient }
    end
    
    def average_calories
        # return average calories of all dessert
        total_calories = ingredients.map { |i| i.calorie }.inject(:+)
        total_calories / desserts.count
    end

    def shopping_list
        # return a hash of ingredients and quantity
        shopping_list = {}
        ingredients.each { |i|
            shopping_list[i] ||= 0
            shopping_list[i] += 1
        }
        shopping_list
    end

    def self.all
        @@all
    end
end