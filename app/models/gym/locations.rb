class Location
    attr_accessor :location

    @@all = []

    # a location has many trainers

    def initialize(location)
        @location = location
        @@all << self
    end

    def clients
        Client.all.select { |c| c.location == self }
    end

    def client_count
        clients.count
    end

    def self.all
        @@all
    end

    def self.least_clients
        # return location with least clients
        least = self.all.min_by { |l| l.client_count }
        self.all.select { |l| l.client_count == least.client_count }
    end
end