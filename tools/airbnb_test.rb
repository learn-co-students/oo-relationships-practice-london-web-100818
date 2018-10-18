
guest1 = Guest.new("Natasha")
guest2 = Guest.new("Killian")
guest3 = Guest.new("Dana")
guest4 = Guest.new("Britt")

puts "GUESTS: "
puts Guest.all

listing1 = Listing.new("London")
listing2 = Listing.new("London")
listing3 = Listing.new("Moon City")
listing4 = Listing.new("Flavortown")

puts "LISTINGS: "
puts Listing.all

trip1 = Trip.new(guest1, listing1)
trip2 = Trip.new(guest2, listing2)
trip3 = Trip.new(guest3, listing3)
trip4 = Trip.new(guest1, listing2)

puts "TRIPS: "
puts Trip.all
