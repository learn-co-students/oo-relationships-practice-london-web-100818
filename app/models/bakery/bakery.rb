class Bakery
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def create_a_dessert(name, *ingredients)
    Dessert.new(name, self, ingredients.flatten)
  end

  def desserts
    # array of desserts bakery makes
    Dessert.all.select { |d| d.bakery == self }
  end

  def ingredients
    # array of ingredients for bakery's desserts
    desserts.map { |d| d.ingredients}.flatten
  end

  def dessert_count
    desserts.count
  end

  def average_calories
    # average calories of desserts sold
    total_calories = ingredients.map { |i| i.calories }.sum
    average_calories = total_calories / dessert_count
  end

  def shopping_list
    # string of ingredients
    ingredients.map { |i| i.name }.join(", ")
  end

  def self.all
    @@all
  end

end
