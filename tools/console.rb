require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
x = Guest.new('Marju')
y = Guest.new('James')
z = Guest.new('Damany')

a = Listing.new('London')
b= Listing.new('New York City')
c= Listing.new('Dublin')
d= Listing.new('Dublin')

f= Trip.new(a,x)
j = Trip.new(b,y)
k = Trip.new(c,z)
l = Trip.new(c,x)
m = Trip.new(c,y)
n = Trip.new(b,z)
g = Trip.new(c,x)









Pry.start
