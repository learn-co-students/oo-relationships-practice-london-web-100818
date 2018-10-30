class Passenger

@@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end

    def rides
        Ride.all.select {|ride| ride.passenger == self}
    end

    def drivers
        rides.map {|ride| ride.driver }
    end

    def total_distance
        rides.map { |r| r.distance }.reduce(:+)
    end

    def self.premium_members
        self.all.select {|x|  x.total_distance > 100}
    end



end