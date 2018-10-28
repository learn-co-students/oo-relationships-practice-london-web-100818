class Trip
    attr_accessor :guest, :listing

    @@all = []

    # a trip belongs to a guest and a listing

    def initialize(guest, listing)
        @guest = guest # return guest object for that trip
        @listing = listing # return lisitng for that trip
        @@all << self
    end

    def self.all
        @@all
    end
end