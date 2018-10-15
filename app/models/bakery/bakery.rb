require 'pry'

class Bakery

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def ingredients
    arr = []
    Bakery.all.each do |bakery| 
      if bakery == self
        arr << bakery.desserts.ingredients.name
      end
    end
    arr
  end

  def desserts
    Desserts.all.select do |dessert| 
      dessert.bakery == self
    end
  end

end

