class Actor
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def characters
    ##should return characters that the actor played##
    Character.all.select {|char| char.actor == self}
  end

  def movies
    ##should return movies that the actor was in##
    characters.collect {|char|
      if char.movies
        char.movies.collect {|movie|
          movie.title
        }
      end
    }.flatten
  end

  def shows
    ##should return shows that the actor was in##
    characters.collect {|char|
      if char.shows
        char.shows.collect {|show|
          show.title
        }
      end
    }.flatten
  end

  def new_role(character, appearance)
    if characters.include?(character)
      character.new_appearance(appearance)
    else
      new_character = Character.new(character, self, appearance)
    end
  end

  def self.most_characters
    ##should return which actor has the most different characters played##
    character_count = 0
    char_actor = ""
    all.each { |actor|
      if actor.characters.length > character_count
        character_count += actor.characters.length
        char_actor = actor
      end
    }
    char_actor
  end

  def self.all
    @@all
  end

end
