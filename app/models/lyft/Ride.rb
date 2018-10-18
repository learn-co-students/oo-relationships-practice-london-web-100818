class Ride

  attr_accessor :driver, :passenger, :distance
  @@all = []

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    ##should find the average distance of all rides##
    total_dist = 0
    all.each {|ride|
      total_dist += ride.distance
    }
    avg_dist = total_dist / (all.length)
  end

end
