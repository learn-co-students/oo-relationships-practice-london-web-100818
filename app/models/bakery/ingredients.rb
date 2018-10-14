class Ingredient
  attr_accessor :name, :calories

  @@all = []

  def initialize(name, calories)
    @name = name
    @calories = calories
    @@all << self
  end

  def dessert
    # return dessert object for that ingredient
  end

  def bakery
    # return bakery object for that ingredient
  end

  def self.all
    @@all
  end

  def self.find_all_by_name(ingredient)
    # array of all ingredients that include arg
  end

end
