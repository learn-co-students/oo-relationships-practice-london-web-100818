class Dessert
  attr_accessor :name, :bakery, :ingredients

  @@all = []

  def initialize(name, bakery, *ingredients)
    @name = name
    @bakery = bakery # error?!?!
    @ingredients = ingredients # error?!?!
    @@all << self
  end

  def ingredients
    # array of ingredients for the dessert
    @ingredients
  end

  def bakery
    # return bakery object for the dessert
    @bakery
  end

  def calories
    # sum of all calories per ingredient
    ingredients.map { |i| i.calories }.sum
  end

  def self.all
    @@all
  end

end
