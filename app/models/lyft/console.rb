require 'pry'
require_relative 'passengers'
require_relative 'rides'
require_relative 'drivers'
# PASSENGERS #
steven = Passenger.new("Steven")
natalia = Passenger.new("Natalia")
# DRIVERS #
mike = Driver.new("Mike")
denzel = Driver.new("Denzel")
# RIDES #
steven.book_a_ride(mike, 75.0)
steven.book_a_ride(denzel, 60.5)
natalia.book_a_ride(mike, 35.5)

Pry.start
