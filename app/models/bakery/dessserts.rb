class Dessert
  attr_accessor :name, :bakery

  @@all = []

  def initialize(name, bakery)
    @name = name
    @bakery = bakery
    @ingredients = []
    @@all << self
  end

  def add_ingredient(ingredient)
    @ingredient << ingredient
  end

  def ingredients
    # array of ingredients for the dessert
  end

  def bakery
    # return bakery object for the dessert
  end

  def calories
    # sum of all calories per ingredient
  end

  def self.all
    @@all
  end

end
