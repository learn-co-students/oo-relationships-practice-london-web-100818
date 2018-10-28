class UserProjects
    attr_accesor: :project_id, :creator_id, :backer_id

    @@all = []

    def initialize(project_id, creator_id, backer_id)
        @project_id = project_id
        @creator_id = creator_id
        @backer_id = backer_id
        @@all << self
    end

    def self.all
        @@all
    end
end
