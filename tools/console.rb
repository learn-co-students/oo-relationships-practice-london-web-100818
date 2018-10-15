require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


d1 = Driver.new('Dario')
d2 = Driver.new('Tom')
d3 = Driver.new('Andrew')
d4 = Driver.new('Dan')
d5 = Driver.new('Fernando')

p1 = Passenger.new('Emily')
p2 = Passenger.new('Ricky')
p3 = Passenger.new('Lola')
p4 = Passenger.new('Steve')
p5 = Passenger.new('Chris')

r1 = Ride.new(d1, p2, 45)
r2 = Ride.new(d1, p3, 60)
r3 = Ride.new(d2, p1, 100)
r4 = Ride.new(d5, p2, 200)
r5 = Ride.new(d1, p1, 209)

r5.passenger




Pry.start
