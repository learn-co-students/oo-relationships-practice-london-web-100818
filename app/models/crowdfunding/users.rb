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

    def self.highest_pledge
        Pledge.all.max_by { |p| p.amount }.user_id
    end

    def self.pledge_count
        pledge_count = {}
        Pledge.all
            .map { |p| p.user_id.name }
            .each do |u|
                pledge_count[u] ||= 0
                pledge_count[u] += 1
            end
        pledge_count
    end

    def self.multi_pledger
        User.pledge_count.keep_if { |u, c| c > 1 }
    end

    def self.project_creator
        Project.all.map { |p| p.creator }
    end

    def self.all
        @@all
    end
end
