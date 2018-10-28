class Guest
    attr_accessor :name

    @@all = []

    # a guest has many trips

    def initialize(name)
        @name = name
        @@all << self
    end

    def book_a_trip(listing)
        Trip.new(self, listing)
    end
    
    def trips
        # return array of all trips for that guest
        Trip.all.select { |t| t.guest == self }
    end

    def listings
        # return array of all listings for that guest
        trips.map { |t| t.listing }
    end

    def trip_count
        # return number of trips for that guest
        trips.count
    end

    def self.all
        @@all
    end

    def self.pro_traveller
        # return array of guests > 1 trip
        self.all.select { |g| g.trip_count > 1 }
    end

    def self.find_all_by_name(name)
        # return guests == name
        self.all.select { |g| g.name == name }
    end
end
