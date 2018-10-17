class Passenger

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self_select
    Ride.all.select {|ride| ride.passenger == self}
  end

  def drivers
   Ride.all.select {|ride| ride.passenger == self}.map {|ride| ride.driver.name}
  end

  def rides
    self_select
  end
  
  def total_distance
    arr = self_select.map {|ride| ride.distance}
    arr.inject(:+)
  end


  def self.premium_members
    Ride.all.select {|ride| ride.distance > 100}.map {|ride| ride.passenger.name}
  end


# - .premium_members
#   - should find all passengers who have travelled over 100 miles with the service

end

