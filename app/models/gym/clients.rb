class Client
    attr_accessor :name, :location, :trainer

    @@all = []

    # a client has one trainer

    def initialize(name, location, trainer)
        @name = name
        @location = location
        @trainer = trainer
        @@all << self
    end

    def assign_trainer(trainer)
        self.trainer = trainer
    end

    def self.all
        @@all
    end
end