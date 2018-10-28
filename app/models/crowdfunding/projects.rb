class Project
    attr_accessor :name, :funding_goal, :creator

    @@all = []

    def initialize(name, funding_goal, creator)
        @name = name
        @funding_goal = funding_goal
        @creator = creator
        @@all << self
    end

    def self.all
        @@all
    end
end
