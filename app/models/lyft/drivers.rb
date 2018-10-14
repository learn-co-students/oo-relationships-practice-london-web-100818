class Driver
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def rides
    Ride.all.select { |r| r.driver == self }
  end

  def passengers
    rides.map { |r| r.passenger }
  end

  def total_distance
    rides.map { |r| r.distance }.inject(:+)
  end

  def self.all
    @@all
  end

  def self.mileage_cap(distance)
    self.all.select { |d| d.total_distance > distance }
  end

end
