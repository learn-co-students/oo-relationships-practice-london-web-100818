class Trip
  attr_accessor :name

  @@all = []

  # a trip belongs to a listing and a guest

  def initialize(name)
    @name = name
    @@all << self
  end

  # listing
    # return listing object for that trip??

  # guest
    # return guest object for that trip??

  def self.all
    @@all
  end

end
