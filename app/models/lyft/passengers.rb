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

  def drivers

  end

  def rides

  end

  def total_distance

  end

  def self.all
    @@all
  end

  def self.premium_members

  end

end
