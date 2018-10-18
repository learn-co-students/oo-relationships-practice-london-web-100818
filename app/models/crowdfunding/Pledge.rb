class Pledge
  attr_accessor :project, :user, :pledge_amount
  @@all = []
  @@pledge_totals = {}

  def initialize (project, user, pledge_amount)
    if @@pledge_totals.keys.include?(project)
      @@pledge_totals[project] += pledge_amount
    else
      @@pledge_totals[project] = pledge_amount
    end
    @project = project
    @user = user
    @pledge_amount = pledge_amount

    @@all << self
  end

  def self.pledge_totals
    @@pledge_totals
  end

  def project
    ##returns the project associated with a particular pledge##
    @project
    
  end

  def user
    ##returns the user associated with a particular pledge##
    @user
  end

  def self.all
    @@all
  end

end
