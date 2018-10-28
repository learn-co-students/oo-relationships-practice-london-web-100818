class Appearance
    attr_accessor :film_type, :character

    @@all = []

    def initialize(film_type, character)
        @film_type = film_type
        @character = character
        @@all << self
    end

    def self.all
        @@all
    end
end