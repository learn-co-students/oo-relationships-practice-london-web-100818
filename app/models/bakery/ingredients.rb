class Ingredient
    attr_accessor :name, :calorie

    @@all = []

    # an ingredient belongs to many desserts

    def initialize(name, calorie)
        @name = name
        @calorie = calorie
        @@all << self
    end

    def desserts
        # return dessert objects for that ingredient
        DessertIngredient.all
            .select { |di| di.ingredient == self }
            .map { |di| di.dessert }
    end

    def bakery
        # return bakery objects for that ingredient
        desserts.map { |d| d.bakery }.uniq
    end

    def self.all
        @@all
    end

    def self.find_all_by_name(ingredient)
        # find all ingredients that include the ingredient in their name
        self.all.select { |i| i.name.include?(ingredient) }
    end
end
