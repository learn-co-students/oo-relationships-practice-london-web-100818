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

  # trips
    # array of all trips at that listing

  # trip_count
    # number of trips at that listing

  def self.all
    @@all
  end

  # .find_all_by_city(city)
    # array of all listings for city

  # .most_popular
    # find listing with the most trips

end
