class Guest

  attr_accessor :name

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def listings
    Trip.all.select {|trip| trip.guest == self }.map {|trip| trip.listing}
  end

  def unique_listings
    listings.uniq
  end

  def trips
    Trip.all.select {|trip| trip.guest == self }
  end

  def trip_count
    trips.count
  end

  def give_super_host_status(host)
    arr = Trip.all.select {|trip| trip.listing.host.name == host }
    arr.each {|trip| trip.listing.host.super_host = 'Super host'}

  end

  def self.find_all_by_name(name)
    Trip.all.select {|trip| trip.guest.name == name}.map {|trip| trip.guest}
  end

end

