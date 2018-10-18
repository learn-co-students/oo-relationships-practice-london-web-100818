class Driver
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def rides
    ##returns all rides a driver has made##
    Ride.all.select {|ride|
      ride.driver == self
    }
  end

  def passengers
    ##returns all passengers a driver has had##
    rides.collect {|ride| ride.passenger}
  end

  def self.all
    ##returns an array of all drivers##
    @@all
  end

  def total_mileage
    ##should calculate the total distance the driver has travelled with the service##
    distance = 0
    rides.each {|ride|
      distance += ride.distance}
    distance
  end

  def self.mileage_cap(distance)
    ##takes an argument of a distance (float) and returns all drivers who have exceeded that mileage##
    all.select { |driver|
      driver.total_mileage > distance
    }
  end

end
