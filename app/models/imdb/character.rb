require 'pry'

class Character

  attr_accessor :name, :actor

  @@all = []

  def initialize(name, actor)
    @name = name
    @actor = actor
    @@all << self
  end

  def self.all
    @@all
  end

  def appearances
    Appearance.all.select do |a| a.character == self end
  end

  def count
    appearances.count
  end

  def self.most_appearances
    self.all.max_by {|character| character.count}
  end
  # - should return which character of film/television appears in the most films or tv shows


end