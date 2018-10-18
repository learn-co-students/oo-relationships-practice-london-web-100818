class Project
  attr_accessor :funding_goal, :creator
  @@all = []

  def initialize(funding_goal, creator)
    @funding_goal = funding_goal
    @creator = creator
    @@all << self
  end

  def self.no_pledges
    ##returns all projects which have no pledges yet##
    all.select { |project|
      if !Pledge.pledge_totals.keys.include?(project)
        project
      end
    }
  end

  def self.above_goal
    ##returns all projects which have met or exceeded their pledge goal##
    Pledge.pledge_totals.select { |project, sum|
      if sum >= project.funding_goal
        project
      end
    }
  end

  def self.most_backers
    ##returns the project with the highest number of backers##

    most_backed = 0
    project = ""

    Project.all.each { |project|
      if Pledge.all.count { |pledge|
        pledge.project == project
      } > most_backed
        project = project
      end
    }
    project
  end

  def self.all
    @@all
  end

end
