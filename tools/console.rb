require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

steven = Guest.new("Steven")
natalia = Guest.new("Natalia")

l1 = Listing.new("Krakow")
l2 = Listing.new("Amsterdam")

t1 = Trip.new(steven, l1)
t2 = Trip.new(natalia, l1)
t3 = Trip.new(steven, l2)

steven.listings
# => l1, l2
steven.trips
# => t1, t3
steven.trip_count
# => 2
Guest.pro_traveller
# => steven
Guest.find_all_by_name("Steven")
# => [steven]

l1.guests
# => [steven, natalia]
l1.trips
# => [t1, t2]
l1.trip_count
# => 2
Listing.find_all_by_city("Amsterdam")
# => [l2]
Listing.most_popular
# => krakow

t1.guest
# => steven
t1.listing
# => l1

Pry.start
