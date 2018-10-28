class Pledge
    attr_reader :user_id, :project_id, :amount

    @@all = []

    def initialize(user_id, project_id, amount)
        @user_id = user_id
        @project_id = project_id
        @amount = amount
        @@all << self
    end

    def self.all
        @@all
    end
end
