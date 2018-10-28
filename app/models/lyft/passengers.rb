class Passenger
    attr_accessor :name

    @@all = []

    # a passenger has many rides

    def initialize(name)
        @name = name
        @@all << self
    end

    def book_a_ride(driver, distance)
        Ride.new(self, driver, distance)
    end

    def rides
        # return all rides of that passenger
        Ride.all.select { |r| r.passenger == self }
    end

    def drivers
        # return all drivers of that passenger
        rides.map { |r| r.driver }.uniq
    end

    def total_distance
        # return total distance of rides of that passenger
        rides.map { |r| r.distance }.inject(:+)
    end

    def self.all
        @@all
    end

    def self.premium_members
        # return all passengers with distance > 100
        self.all.select { |p| p.total_distance > 100 }
    end
end
