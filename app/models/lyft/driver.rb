class Driver

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
    Ride.all.select {|ride| ride.driver == self}
  end

  def passengers
    self_select.map {|rides| rides.passenger.name}
  end

  def rides
    self_select
  end

  def self.mileage_cap(mileage_cap)
    Ride.all.select {|rides| rides.distance > mileage_cap}.map {|rides| rides.driver.name}
  end
end