class Listing
  attr_accessor :city, :guests, :trips
  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def guests
    @guests = []
    Trip.all.select {|trip|
      if trip.listing == self
        @guests << trip.guest
      end
      }
    @guests.uniq
  end

  def trips
    @trips = Trip.all.select {|trip| trip.listing == self}
    @trips
  end

  def trip_count
    @trips.length
  end

  def self.all
    @@all
  end

  def self.find_all_by_city(city_str)
    @@all.select {|listing| listing.city == city_str}
  end

  def self.most_popular
    Listing.all.sort_by {|listing|
      listing.trips.length
    }[-1]
  end

end
