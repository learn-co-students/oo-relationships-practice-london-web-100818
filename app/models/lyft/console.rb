require_relative "rides"
require_relative "drivers"
require_relative "passengers"

require 'pry'

frank = Driver.new("Frank")

matt = Passenger.new("Matt")
susan = Passenger.new("Susan")

matt.book_a_ride(frank, 150)
susan.book_a_ride(frank, 75)

binding.pry
p 'eof'
