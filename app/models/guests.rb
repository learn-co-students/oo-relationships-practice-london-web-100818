class Guest
  attr_accessor :name

  @@all = []

  # a guest has many trips
  # a guest has many listings thru trips

  def initialize(name)
    @name = name
    @trips = []
    @@all << self
  end

  def book_a_trip(listing)
    trip = Trip.new(self, listing)
    @trips << trip
  end

  # trips
  # array of trips guest has made
  def trips
    @trips
  end

  # listings
    # array of listings that guest has stayed at
  def listings
    trips.map { |t| t.listing }
  end

  # trip_count
    # array of trips guest has taken
  def trip_count
    trips.count
  end

  def self.all
    @@all
  end

  # .pro_traveller
    # array of guests > 1 trip
  def self.pro_traveller
    Guest.all.map { |g|
      if trips.count > 1
        return g
      end
    }
  end

  # .find_all_by_name(name)
    # array of guest == name
  def self.find_all_by_name(name)
    Guest.all.select { |g| g.name == name }
  end

end
