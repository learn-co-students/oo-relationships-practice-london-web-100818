class Driver
    attr_accessor :name

    @@all = []

    # a driver has many rides

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        # return all rides of that driver
        Ride.all.select { |r| r.driver == self }
    end

    def passengers
        # return all passengers of that driver
        rides.map { |r| r.passenger }.uniq
    end

    def total_distance
        rides.map { |r| r.distance }.inject(:+)
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        # return drivers with distance over > arg
        self.all.select { |d| d.total_distance > distance}
    end
end
