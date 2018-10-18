class Listing
    attr_accessor :city

    @@all = []

    # a listing has many trips

    def initialize(city)
        @city = city
        @@all << self
    end
    
    def trips
        # return array of all trips at that listing
        Trip.all.select { |t| t.listing == self }
    end

    def guests
        # return array of all guests at that listing
        trips.map { |t| t.guest }
    end

    def trip_count
        # return number of trips at that listing
        trips.count
    end

    def self.all
        @@all
    end

    def self.find_all_by_city(city)
        # return all listings for that city
        self.all.select { |l| l.city == city }
    end

    def self.most_popular
        # return listing with most trips
        most = self.all.max_by { |l| l.trip_count }
        self.all.select { |l| l.trip_count == most.trip_count }
    end
end