class Passenger

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def rides
    ##returns all rides a passenger has been on##
    Ride.all.select {|ride|
      ride.passenger == self
    }
  end

  def drivers
    ##returns all drivers a passenger has ridden with##
    rides.collect {|ride| ride.driver}
  end

  def self.all
    ##returns an array of all passengers##
    @@all
  end

  def total_distance
    ##should calculate the total distance the passenger has travelled with the service##
    distance = 0
    rides.each {|ride|
      distance += ride.distance}
    distance
  end

  def self.premium_members
    ##should find all passengers who have travelled over 100 miles with the service##
    all.select {|passenger|
      passenger.total_distance > 100
    }
  end

end
