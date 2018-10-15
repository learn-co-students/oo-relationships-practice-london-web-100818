mikko = Driver.new("Mikko")
steven = Driver.new("Steven")
ricky = Driver.new("Ricky")

puts Driver.all

natasha = Passenger.new("Natasha")
lola = Passenger.new("Lola")
rob = Passenger.new("Rob")

puts Passenger.all

ride1 = Ride.new(mikko, natasha, 215.4)
ride2 = Ride.new(steven, lola, 105.8)
ride3 = Ride.new(ricky, rob, 10.3)
ride4 = Ride.new(mikko, rob, 9.8)

puts Ride.all
