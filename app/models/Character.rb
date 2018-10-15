class Character

  attr_accessor :name, :actor, :appearance, :movies, :shows
  @@all = []

  def initialize(name, actor, appearance)
    @name = name
    @actor = actor
    @movies = []
    @shows = []
    if appearance.class == Movie
      @movies << appearance
    elsif appearance.class == Show
      @shows << appearance
    end
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appearance(appearance)
    if appearance.class == Movie
      @movies << appearance
    elsif appearance.class == Show
      @shows << appearance
    end
  end

  def appearances
    self.movies.length + self.shows.length
  end

  def self.most_appearances
    ##should return which character of film/television appears in the most films or tv shows##
    appearance_count = 0
    popular_character = ""
    all.each { |character|
      if character.appearances > appearance_count
        appearance_count += character.appearances
        popular_character = character
      end
    }
    popular_character
  end


end
