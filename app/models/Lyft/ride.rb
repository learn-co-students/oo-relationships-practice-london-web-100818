class Ride

@@all = []

    attr_accessor :passenger, :driver, :distance

    def initialize(passenger, driver, distance=0.0)
        @passenger = passenger
        @driver = driver
        @distance = distance
        @@all << self

    end 

    def self.all
        @@all
    end

    def self.average_distance
        self.all.map {|r| r.distance }.reduce(:+)/ self.all.length
    end
end

