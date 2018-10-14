class Ride
  attr_accessor :passenger, :driver, :distance

  @@all = []

  def initialize(passenger, driver, distance)
    @passenger = passenger
    @driver = driver
    @distance = distance
    @@all << self
  end

  def passenger
    @passenger
  end

  def driver
    @driver
  end

  def self.all
    @@all
  end

  def self.average_distance
    total_distance = self.all.map { |r| r.distance }.inject(:+)
    average_distance = total_distance / @@all.count
  end

end
