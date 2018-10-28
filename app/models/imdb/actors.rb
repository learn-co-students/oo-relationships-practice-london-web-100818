class Actor
    attr_accessor :name

    @@all = []

    # an actor has many characters

    def initialize(name)
        @name = name
        @@all << self
    end

    def characters
        Appearance.all
            .select { |a| a.actor == self }
            .map { |a| a.character }
    end

    def character_count
        characters.count
    end

    def self.all
        @@all
    end

    def self.most_characters
        # return the actor with most unique characters
        most = self.all.max_by { |a| a.character_count }
        self.all.select { |a| a.character_count == most.character_count }
    end
end