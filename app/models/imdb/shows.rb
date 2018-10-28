class Show
    attr_accessor :name

    @@all = []

    # a show has many characters

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.on_the_big_screen
        # return shows with the same name as a movie
        self.all
            .select { |s| Movie.names.include?(s.name) }
    end
end