class Appearance

attr_accessor :appearance, :character

  @@all = []

  def initialize(appearance, character)
    @appearance = appearance
    @character = character
    @@all << self
  end

  def self.all
    @@all
  end

end