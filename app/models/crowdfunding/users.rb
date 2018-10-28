class User
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def create_a_project(name, funding_goal)
        Project.new(name, funding_goal, self)
    end

    def back_a_project(project, amount)
        Pledge.new(self, project, amount)
    end

    def self.all
        @@all
    end
end
