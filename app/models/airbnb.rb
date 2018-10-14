require 'pry'


class Guest

  attr_accessor :name, :guests
  @@guests = []

  def initialize(name)
    @name = name
    @@guests << self
  end

  def self.all
    @@guests
  end

  def self.find_all_by_name(name)
    Guest.all.select { |guest| guest.name == name}
  end

  def self.pro_traveller
    hash = {}
    Trip.all.each do |trip|
      if hash[trip.guest]
        hash[trip.guest] +=1
      else
        hash[trip.guest]
        hash[trip.guest] = 1
      end
    end
    hash.select do |key, value|
      if value > 1
        key
      end
    end
  end

  def trips
    Trip.all.select {|trip| trip.guest == self}
  end

  def trip_count
    Trip.all.select {|trip| trip.guest == self}.count
  end

  def listings
    arr = []
    Trip.all.each do |trip| 
      if trip.guest == self
        arr << trip.listing
      else
        nil
      end
    end
    arr

  end

  def trips
    Trip.all.select {|trip| trip.guest == self}
  end

end

class Trip

  attr_accessor :trips, :guest, :listing
  @@trips = []

  def initialize(guest, listing)
    @guest = guest
    @listing = listing
    @@trips << self
  end

  def self.all
    @@trips
  end

  def listing
    @listing
  end

  def guest
    @guest
  end
  
end

class Listing

  attr_accessor :listings, :name, :city
  @@listings = []

  def initialize(name, city)
    @city = city
    @name = name
    @@listings << self
  end

  def self.all
    @@listings
  end

  def guests
    arr = []
    Trip.all.each do |trip| 
      if trip.listing == self
        arr << trip.guest
      end
    end
    arr.uniq
  end

  def trips
    Trip.all.select {|trip| trip.listing == self}
    
  end

  def trip_count
    Trip.all.select {|trip| trip.listing == self}.count
  end

  def self.find_all_by_city(city)
    arr = []
    Listing.all.each do |listing| 
      if listing.city == city
        arr << listing
      else
        nil
      end
    end
    arr
  end

  def self.most_popular
    hash = {}
    Trip.all.each do |trip| 
      if hash[trip.listing]
      hash[trip.listing] += 1
      else
        hash[trip.listing]
        hash[trip.listing] = 1
      end
    end
    hash.key(hash.values.max)
  end
end

g1 = Guest.new('Ricky')
g2 = Guest.new('Dario')
g3 = Guest.new('Chris')
g4 = Guest.new('Lola')

l1 = Listing.new('Red House', 'London')
l2 = Listing.new('Blue House', 'Paris')
l3 = Listing.new('Green House', 'Hongkong')
l4 = Listing.new('Black House', 'Paris')
l5 = Listing.new('Pink House', 'Paris')


t1 = Trip.new(g1, l1)
t2 = Trip.new(g1, l1)
t3 = Trip.new(g1, l1)
t4 = Trip.new(g4, l3)
t5 = Trip.new(g4, l4)




