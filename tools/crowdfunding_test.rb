natasha = User.new("Natasha")
lola = User.new("Lola")
rob = User.new("Rob")

puts User.all

balloons = Project.new(10000, lola)
donuts = Project.new(25000, rob)
helicopter = Project.new(5000000, natasha)

puts Project.all

pledge1 = Pledge.new(balloons, natasha, 1000)
pledge2 = Pledge.new(donuts, lola, 28000)
pledge3 = Pledge.new(balloons, lola, 6000)
pledge4 = Pledge.new(balloons, rob, 2500)
pledge5 = Pledge.new(balloons, rob, 500)

puts Pledge.all
