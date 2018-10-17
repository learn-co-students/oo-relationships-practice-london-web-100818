  require 'pry'
  
  class Movie

    attr_accessor :name

    @@all = []

    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end

    def actors
      Appearance.all.select {|a| a.appearance == self}
    end

    def count
      actors.count
    end

    def self.most_actors
      self.all.max_by {|character| character.count}
    end
    

  end

  # should return the movie which has the most actors in it. 