require 'pry'

class Guest

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select { |t| t.guest == self }
  end

  def listings
    trips.map { |t| t.guest }
  end

  def trip_count
    self.trips.count
  end

  def self.pro_traveller
    self.all.select { |guest| guest.trip_count > 1 }
  end

  def self.find_all_by_name(name)
    self.all.select { |guest| guest.name }
  end

end
