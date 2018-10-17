require 'pry'
class Actor

    attr_accessor :name

    @@all = []

    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end

    def characters
      Appearance.all.select {|a| a.character.actor == self} 
    end

    def count
      characters.count
    end

    def self.most_characters
      self.all.max_by {|a| a.count}
    end



#should return which actor has the most different characters played.
end