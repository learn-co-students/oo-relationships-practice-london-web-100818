require_relative '../config/environment.rb'
# require_relative 'guest'
# require_relative 'listings'
# require_relative 'trip'

def reload
  load 'config/environment.rb'
end

chris = Guest.new('Chris')
tom = Guest.new('Tom')
simon = Guest.new('Simon')
ben = Guest.new('Ben')

listing1 = Listing.new('Madrid')
listing2 = Listing.new('London')
listing3 = Listing.new('Paris')
listing4 = Listing.new('Rome')

trip1 = Trip.new(listing1, chris)
trip2 = Trip.new(listing1, ben)
trip3 = Trip.new(listing3, tom)
trip4 = Trip.new(listing4, simon)
trip5 = Trip.new(listing4, simon)
trip6 = Trip.new(listing4, simon)
trip7 = Trip.new(listing4, simon)



Pry.start
