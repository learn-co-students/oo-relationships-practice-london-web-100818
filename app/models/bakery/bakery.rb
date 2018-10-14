class Bakery
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def ingredients
    # array of ingredients for bakery's desserts
  end

  def desserts
    # array of desserts bakery makes
  end

  def average_calories
    # average calories of desserts sold
  end

  def shopping_list
    # string of ingredients
  end

  def self.all
    @@all
  end

end
