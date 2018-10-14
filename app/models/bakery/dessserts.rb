class Dessert
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
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
