flour = Ingredient.new("flour", 150)
butter = Ingredient.new("butter", 300)
egg = Ingredient.new("egg", 75)
sugar = Ingredient.new("sugar", 250)
water = Ingredient.new("water", 0)
salt = Ingredient.new("salt", 2)
lemon = Ingredient.new("lemon", 50)

puts Ingredient.all

bread = Dessert.new(flour, butter)
cake = Dessert.new(water, salt)
meringue = Dessert.new(egg, sugar)
lemon_bar = Dessert.new(lemon)


puts Dessert.all

small_bakery = Bakery.new(cake)
med_bakery = Bakery.new(meringue)
big_bakery = Bakery.new(bread, lemon_bar)

puts Bakery.all
