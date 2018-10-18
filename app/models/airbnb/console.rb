require 'pry'
require_relative 'guests'
require_relative 'trips'
require_relative 'listings'

steven = Guest.new("Steven")
natalia = Guest.new("Natalia")

krakow = Listing.new("Krakow")
amsterdam = Listing.new("Amsterdam")

steven.book_a_trip(krakow)
steven.book_a_trip(amsterdam)
natalia.book_a_trip(krakow)

Pry.start