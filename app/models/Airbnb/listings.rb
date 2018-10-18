require 'pry'

class Listing

  attr_accessor :city

  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  # A class Method - Looks up the scope, returns all tweets.
  def self.all
    @@all
  end

  def trips
    Trip.all.select {|trip| trip.listing == self }
  end

  def guests
    trips.map {|trip| trip.guest }
  end

  def trip_count
    self.trips.count
  end

  def self.find_all_by_city(city)
    self.all.select { |listing| listing.city == city}
  end

  def self.most_popular
    # listing_with_most_trips_count = 0
    # l = nil

    # self.all.each do |listing|
    #   if listing.trip_count > listing_with_most_trips_count
    #     listing_with_most_trips_count = listing.trip_count
    #     l = listing
    #   end
    # end
    # l

    # listings_trip_counts = self.all.map { |e| e.trip_count  }
    # max = listings_trip_counts.max()
    # self.all[]

    self.all.max_by { |e| e.trip_count  }

  end

end
