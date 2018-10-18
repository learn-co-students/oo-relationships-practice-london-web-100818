class Client
  attr_accessor :name, :trainer
  @@all = []

  def initialize(name)
    @name = name
    @trainer = "unassigned"
    @@all << self
  end

  def assign_trainer(trainer)
    ##assign trainer to client##
    @trainer = trainer
    "#{trainer.name} added as #{self.name}'s trainer."
  end

  def self.all
    @@all
  end
end
