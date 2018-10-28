class Project
    attr_accesor: :name, :funding_goal

    @@all = []

    def initialize(name, funding_goal)
        @name = name
        @funding_goal = funding_goal
        @@all << self
    end

    def self.all
        @@all
    end
end
