class Movie
    attr_accessor :name

    @@all = []

    # a movie has many characters

    def initialize(name)
        @name = name
        @@all << self
    end

    def actors
        Appearance.all
            .select { |a| a.film_type == self }
            .map { |a| a.actor }
    end

    def actor_count
        actors.count
    end

    def self.all
        @@all
    end

    def self.most_actors
        # return the movie with the most actors
        most = self.all.max_by { |m| m.actor_count }
        self.all.select { |m| m.actor_count == most.actor_count }
    end

    def self.names
        Movie.all.map { |m| m.name }
    end
end