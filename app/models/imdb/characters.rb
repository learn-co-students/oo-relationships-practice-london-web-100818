class Character
    attr_accessor :name, :actor

    @@all = []

    # a character only has one actor
    # a character has many movies
    # a character has many shows

    def initialize(name, actor)
        @name = name
        @actor = actor
        @@all << self
    end

    def make_an_appearance(film_type)
        Appearance.new(film_type, self)
    end

    def appearances
        Appearance.all.select { |a| a.character == character }
    end

    def appearance_count
        appearances.count
    end
    
    def self.all
        @@all
    end

    def self.most_appearances
        # return the character with most appearances
        most = self.all.max_by { |c| c.appearance_count }
        self.all.select { |c| c.appearance_count == most.appearance_count }
    end
end