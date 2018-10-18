lola = Trainer.new("Lola")
natasha = Trainer.new("Natasha")
steve = Trainer.new("Steve")

puts Trainer.all

rob = Client.new("Rob")
joe = Client.new("Joe")
mikko = Client.new("Mikko")

puts Client.all

small_gym = Location.new("Small Gym")
med_gym = Location.new("Medium Gym")
big_gym = Location.new("Big Gym")

puts Location.all

workout1 = Workout.new(rob, small_gym)
workout2 = Workout.new(joe, med_gym)
workout3 = Workout.new(mikko, big_gym)
workout4 = Workout.new(rob, small_gym)
workout5 = Workout.new(rob, small_gym)
workout6 = Workout.new(rob, med_gym)

puts Workout.all

mikko.assign_trainer(lola)
joe.assign_trainer(steve)
rob.assign_trainer(lola)
