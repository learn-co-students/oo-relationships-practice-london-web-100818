class Ingredient
  attr_accessor :calories, :dessert, :ingredients, :bakery, :name
  @@all = []

  def initialize(name, calories)
    @name = name
    @calories = calories
    @@all << self
  end

  def dessert
  ##should return a dessert object for that ingredient##
    Dessert.all.select { |dessert|
      dessert.ingredients.each {|ingredient|
        if ingredient == self
          return dessert
        end
      }
    }
  end

  def bakery
    ##should return the bakery object for the bakery that uses that ingredient##
    Dessert.all.select { |dessert|
      dessert.ingredients.each {|ingredient|
        if ingredient == self
          return dessert.bakery
        end
      }
    }
  end

  def self.all
    ##should return an array of all ingredients##
    @@all
  end

  def self.find_all_by_name(ingredient)
    ##should take a string argument return an array of all ingredients that include that string in their name
    ## .find_all_by_name('chocolate') might return ['chocolate sprinkles', 'chocolate mousse', 'chocolate']
    ## make sure you aren't just looking for exact matches (like 'chocolate' == 'chocolate')
    @@all.select {|ing| ing.name.include?(ingredient)}
  end

end
