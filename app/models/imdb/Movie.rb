class Movie

  attr_accessor :title
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def characters
    ##should return its characters##
    Character.all.select {|char| char.movies.include?(self)}
  end

  def actors
    ##should return its actors##
    characters.collect {|char|
        char.actor
    }.flatten
  end

  def self.most_actors
    ##should return the movie which has the most actors in it##
    actor_count = 0
    biggest_movie = ""
    all.each { |movie|
      if movie.actors.length > actor_count
        actor_count += movie.actors.length
        biggest_movie = movie
      end
    }
    biggest_movie
  end


end
