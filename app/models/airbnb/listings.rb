class Listing
  attr_accessor :city

  @@all = []

  # a listing has many trips
  # a listing hsa many guest thru trips

  def initialize(city)
    @city = city
    @@all << self
  end

  # guests
    # array of guests that have stayed
  def guests
    Trip.all.select { |t| t.listing == self }
  end

  # trips
    # array of all trips at that listing
  def trips
    Trip.all.select { |t| t.listing == self }
  end

  # trip_count
    # number of trips at that listing
  def trip_count
    trips.count
  end

  def self.all
    @@all
  end

  # .find_all_by_city(city)
    # array of all listings for city
  def self.find_all_by_city(city)
    self.all.select { |l| l.city == city }
  end

  # .most_popular
    # find listing with the most trips
  def self.most_popular
    self.all.max_by { |l| l.trip_count }
  end

end
