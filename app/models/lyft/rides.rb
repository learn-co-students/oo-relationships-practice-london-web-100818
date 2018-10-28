class Ride
    attr_accessor :passenger, :driver, :distance

    @@all = []

    # a ride belongs to a passenger
    # a ride belongs to a driver

    def initialize(passenger, driver, distance)
        @passenger = passenger # return passenger object
        @driver = driver # return driver object
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        # return average distance of all rides
        total_distance = self.all.map { |r| r.distance }.inject(:+)
        total_distance / self.all.count
    end
end
