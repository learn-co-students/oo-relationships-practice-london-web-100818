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
    Dessert.all.select { |d| d.ingredients.include?(self) }
  end

  def bakery
    # return bakery object for that ingredient
    dessert.bakery
  end

  def self.all
    @@all
  end

  def self.find_all_by_name(ingredient)
    # array of all ingredients that include arg
    self.all.select { |i| i.name.include?(ingredient) }
  end

end
