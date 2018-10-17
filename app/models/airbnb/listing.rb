require 'pry'

class Listing

  attr_accessor :name, :city, :host

  @@all =[]

  def initialize(name, city, host)
    @host = host
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def guests
    Trip.all.select {|trip| trip.listing == self}.map {|trip| trip.guest}
  end

  def trips
    Trip.all.select {|trip| trip.listing == self}
  end

  def trip_count
    trips.count
  end

  def self.find_all_by_city(city)
    Trip.all.select {|trip| trip.listing.city == city}.map {|trip| trip.guest}
  end


end

# #### Listing
# - #guests
#   - returns an array of all guests who have stayed at a listing
# - #trips
#   - returns an array of all trips at a listing
# - #trip_count
#   - returns the number of trips that have been taken to that listing
# - .all
#   - returns an array of all listings
# - .find_all_by_city(city)
#   - takes an argument of a city name (as a string) and returns all the listings for that city
# - .most_popular
#   - finds the listing that has had the most trips