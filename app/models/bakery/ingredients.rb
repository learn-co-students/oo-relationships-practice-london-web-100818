class Ingredients

  attr_accessor :name

  @@all = []

  def initialize(name, calories)
    @calories = calories
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  
end