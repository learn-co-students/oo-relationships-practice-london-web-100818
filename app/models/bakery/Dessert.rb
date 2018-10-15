class Dessert

  attr_accessor :ingredients, :bakery, :dessert

  @@all = []

  def initialize(*ingredients)
    @ingredients = ingredients
    @ingredients.each {|i| i.dessert = self}
    @@all << self
  end

  def ingredients
    ##should return an array of ingredients for the dessert##
    @ingredients
  end

 def bakery
    ##should return the bakery object for the dessert##
    Bakery.all.select { |bakery|
      bakery.desserts.each {|dessert|
        if dessert == self
          return bakery
        end
        }
      }
  end

  def calories
    ##should return a number totaling all the calories for all##
    ## the ingredients included in that dessert##
    total_calories = 0
    @ingredients.each { |ingredient|
      total_calories += ingredient.calories}
    total_calories
  end

  def self.all
    ##should return an array of all desserts
    @@all
  end
end
