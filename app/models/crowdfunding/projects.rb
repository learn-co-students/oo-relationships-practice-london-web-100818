class Project
    attr_accessor :name, :funding_goal, :creator

    @@all = []

    def initialize(name, funding_goal, creator)
        @name = name
        @funding_goal = funding_goal
        @creator = creator
        @@all << self
    end

    def self.pledges
        Pledge.all.map { |p| p.project_id }
    end

    def self.no_pledges
        Project.all - Project.pledges.uniq!
    end

    def self.funding
        project_funding = {}
        Pledge.all.each do |p|
            project_funding[p.project_id.name] ||= 0
            project_funding[p.project_id.name] += p.amount
        end
        project_funding
    end

    def self.above_goal
        Project.all.map do |project|
            Project.funding.each do |p, f|
                if project.name == p && project.funding_goal < f
                    return project
                end
            end
        end
    end

    def self.backers
        project_backers = {}
        Pledge.all.each do |p|
            project_backers[p.project_id.name] ||= []
            project_backers[p.project_id.name] << p.user_id.name
        end
        project_backers
    end

    def self.most_backers
        Project.backers.max_by { |p, b| b.count }
    end

    def self.all
        @@all
    end
end
