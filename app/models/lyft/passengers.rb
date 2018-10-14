class Passenger
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def book_a_ride(driver, distance)
    Ride.new(self, driver, distance)
  end

  def rides
    Ride.all.select { |r| r.passenger == self }
  end

  def drivers
    rides.map { |r| r.driver }
  end

  def total_distance
    rides.map { |r| r.distance }.inject(:+)
  end

  def self.all
    @@all
  end

  def self.premium_members
    self.all.select { |p| p.total_distance > 100 }
  end

end
