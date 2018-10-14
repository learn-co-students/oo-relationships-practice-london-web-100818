require 'pry'

require_relative "bakery"
require_relative "desserts"
require_relative "ingredients"

yums = Bakery.new("Yums")

egg = Ingredient.new("egg", 20)
flour = Ingredient.new("flour", 50)
milk = Ingredient.new("milk", 30)
jam = Ingredient.new("jam", 15)

yums.create_a_dessert("Pancakes", egg, flour, milk)
yums.create_a_dessert("Sponge Cake", egg, flour, milk, jam)

binding.pry
p 'eof'
