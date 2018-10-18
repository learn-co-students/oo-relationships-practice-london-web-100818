class Trainer
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def clients
    Client.all.select {|c| c.trainer == self}
  end

  def self.most_clients
    ##should find which trainer has the most clients##
    self.all.max_by{|t| t.clients == self
    }
  end


end
