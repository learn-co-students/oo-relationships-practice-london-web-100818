class Location
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def workouts
    Workout.all.select {|w| w.location == self}
  end

  def clients
    workouts.map {|w| w.client}
  end

  def self.most_clients
    ##should find which trainer has the most clients##
    self.all.max_by{|l| l.clients.length}
  end


  def self.least_clients
    ##should find which location has the least clients training there##
    self.all.min_by{|l| l.clients.length}
  end

  def self.all
    @@all
  end


end
