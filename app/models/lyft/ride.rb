class Ride

  attr_accessor :driver, :passenger, :distance
    @@all = []

  def initialize(driver, passenger, distance)
    @distance = distance
    @driver = driver
    @passenger = passenger
    @@all << self
  end

  def self.all
    @@all
  end

  def self_select
    Ride.all.select {|rides| rides == self}
  end

  def passenger
    @passenger
  end


  def driver
    @driver
  end

  def self.average_distance
    arr = Ride.all.map {|rides| rides.distance}
    (arr.inject(:+)/arr.length)
  end

end
