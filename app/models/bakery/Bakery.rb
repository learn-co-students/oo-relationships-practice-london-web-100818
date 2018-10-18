class Bakery

  attr_accessor :desserts, :ingredients, :bakery

  @@all = []

  def initialize(*desserts)
    @desserts = desserts
    @desserts.each {|d| d.bakery = self}
    @@all << self
  end

  def ingredients
    ##should return an array of ingredients for the bakerys desserts##
    @ingredients = @desserts.map {|d| d.ingredients}.flatten
  end

  def desserts
    ##should return an array of desserts the bakery makes##
    @desserts
  end

  def average_calories
    ##should return a number totaling the average number of calories for the desserts sold at this bakery
    total_calories = 0

    @desserts.each { |dessert|
        total_calories += dessert.calories}

    avg_calories = total_calories / (desserts.length)
  end

  def self.all
    ##should return an array of all bakeries
    @@all
  end

  def shopping_list
    ##should return a string of names for ingredients for the bakery
    shopping = ""
    @ingredients.each {|ingredient| shopping << "#{ingredient.name}\n"}
    shopping
  end


end
