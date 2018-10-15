class Guest
  attr_accessor :name, :trips, :listings
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def listings
    @listings = []
    Trip.all.select {|trip|
      if trip.guest == self
        @listings << trip.listing
      end
    }
    @listings
  end

  def trips
    Trip.all.select {|trip| trip.guest == self}
  end

  def trip_count
    self.trips.length
  end

  def self.all
    @@all
  end

  def self.pro_traveller
    Guest.all.select {|guest|
      guest.trip_count > 1
    }
  end

  def self.find_all_by_name(name_str)
    @@all.select {|guest| guest.name == name_str}
  end

end
