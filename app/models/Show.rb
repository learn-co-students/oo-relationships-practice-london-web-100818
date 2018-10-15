class Show

  attr_accessor :title
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def characters
    ##should return its characters##
    Character.all.select {|char| char.shows.include?(self)}
  end

  def actors
    ##should return its actors##
    characters.collect {|char|
        char.actor
    }.flatten
  end

  def self.on_the_big_screen
    ##should return TV shows that share the same name as a movie##
    big_screen = []
    all.each {|show|
      Movie.all.each { |movie|
          if movie.title == show.title
            big_screen << show
          end
      }
    }
    big_screen
  end

  def self.all
    @@all
  end
end
