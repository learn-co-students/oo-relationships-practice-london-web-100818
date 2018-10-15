require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

steve = Actor.new("Steve")
ricky = Actor.new("Ricky")
rob = Actor.new("Rob")
lola = Actor.new("Lola")

puts Actor.all

infinity_war = Movie.new("Infinity War")
incredible_hulk = Movie.new("Incredible Hulk")
age_of_ultron = Movie.new("Age of Ultron")
pride_and_prejudice = Movie.new("Pride and Prejudice")
outlander_movie = Movie.new("Outlander")

puts Movie.all

friends = Show.new("Friends")
parks_and_rec = Show.new("Parks and Rec")
the_office = Show.new("The Office")
outlander_show = Show.new("Outlander")

puts Show.all

spiderman = Character.new("Spiderman", steve, infinity_war)
iron_man = Character.new("Iron Man", ricky, infinity_war)
hulk = Character.new("Hulk", rob, infinity_war)
rachel = Character.new("Rachel", lola, friends)
phoebe = Character.new("Phoebe", rob, friends)
leslie = Character.new("Leslie", ricky, parks_and_rec)
ron = Character.new("Ron", steve, parks_and_rec)
elizabeth = Character.new("Elizabeth", ricky, pride_and_prejudice)

puts Character.all




Pry.start
