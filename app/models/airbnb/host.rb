class Host

  attr_accessor :name, :number, :super_host

  @@all =[]

  def initialize(name, number)
    @name = name
    @number = number
    @super_host = 'Not super host'
    @@all << self
  end

  def self.all
    @@all
  end
end