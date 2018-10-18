class Dessert
    attr_accessor :name, :bakery

    @@all = []

    # a dessert belongs to a bakery
    # a dessert has many ingredients

    def initialize(name, bakery)
        @name = name
        @bakery = bakery # return bakery of that dessert
        @@all << self
    end

    def ingredients
        # return ingredients of that dessert
        DessertIngredient.all
            .select { |di| di.dessert == self }
            .map { |di| di.ingredient }
    end

    def calories
        # return total calories of that dessert
        ingredients.map { |i| i.calorie }.inject(:+)
    end

    def self.all
        @@all
    end
end