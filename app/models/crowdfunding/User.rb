class User
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.highest_pledge
    ##returns the user who has made the highest pledge##
    highest_pledge = 0
    highest_pledger = ""
    Pledge.all.each { |pledge|
      if pledge.pledge_amount > highest_pledge
        highest_pledge += pledge.pledge_amount
        highest_pledger = pledge.user
      end
    }
    highest_pledger
  end
  def self.multi_pledger
    ##returns all users who have pledged to multiple projects##
    pledgers = []
    multipledgers = []
    Pledge.all.each { |pledge|
      pledgers << pledge.user}
    pledgers.each {|user|
      if pledgers.count(user) > 1
        multipledgers << user
      end
      }
    multipledgers.uniq
  end
  def self.project_creator
    ##returns all users who have created a project##
    creators = []
    Project.all.each { |project|
      creators << project.creator
    }
    creators
  end

  def self.all
    @@all
  end

end
