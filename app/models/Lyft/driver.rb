class Driver

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
        Ride.all.select {|ride| ride.driver == self}
    end

    def total_distance
        rides.map { |r| r.distance }.reduce(:+)
    end

    def passengers
        rides.map {|ride| ride.passenger}
    end

    def self.milage_cap(distance)
        self.all.select {|x| x.total_distance > distance}
    end
end