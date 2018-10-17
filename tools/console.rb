require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

h1 = Host.new('Sally', '07706796145')
h2 = Host.new('John', '07796847364')


l1 = Listing.new('Listing 1', 'New York', h1)
l2 = Listing.new('Listing 2', 'New York', h2)

g1 = Guest.new('Guest 1')
g2 = Guest.new('Guest 2')
g3 = Guest.new('Guest 3')



t1 = Trip.new(l1, g1)
t2 = Trip.new(l1, g1)
t3 = Trip.new(l2, g1)
t4 = Trip.new(l2, g2)
t4 = Trip.new(l2, g3)

Listing.find_all_by_city('New York')



Pry.start
