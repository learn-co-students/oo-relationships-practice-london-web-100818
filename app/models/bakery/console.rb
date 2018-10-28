require 'pry'
require_relative 'bakeries'
require_relative 'desserts'
require_relative 'dessert_ingredient'
require_relative 'ingredients'
# BAKERIES #
bake_it = Bakery.new("Bake It")
frescito = Bakery.new("Frescito")
# DESSERTS #
bread = bake_it.create_a_dessert("Fresh Bread")
pancakes = frescito.create_a_dessert("Pancakes")
lemon_cake = frescito.create_a_dessert("Lemon Cake")
# INGREDIENTS #
flour = bake_it.add_ingredient("flour", 25)
yeast = bake_it.add_ingredient("yeast", 5)
milk = bake_it.add_ingredient("milk", 20)
egg = frescito.add_ingredient("egg", 10)
almond_milk = frescito.add_ingredient("almond milk", 15)
lemon = frescito.add_ingredient("lemon", 10)
# DESSERT_INGREDIENT #
bread_recipe = bake_it.create_a_recipe(bread, [flour, yeast])
pancakes_recipe = frescito.create_a_recipe(pancakes, [flour, egg, milk])
lemon_cake_recipe = frescito.create_a_recipe(lemon_cake, [flour, yeast, almond_milk, lemon])

Pry.start