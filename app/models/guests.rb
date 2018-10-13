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

  # listing
    # array of listings that guest has stayed at

  # trips
    # array of trips guest has made

  # trip_count
    # array of trips guest has taken

  def self.all
    @@all
  end

  # .pro_traveller
    # array of guests > 1 trip

  # .find_all_by_name(name)
    # array of guest == name

end
