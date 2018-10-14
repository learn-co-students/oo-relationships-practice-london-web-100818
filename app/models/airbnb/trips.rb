class Trip
  attr_accessor :name, :guest, :listing

  @@all = []

  # a trip belongs to a listing and a guest

  def initialize(name, guest, listing)
    @guest = guest
    @listing = listing
    @@all << self
  end

  # guest
    # return guest object for that trip??
  def guest
    @guest
  end

  # listing
    # return listing object for that trip??
  def listing
    @listing
  end

  def self.all
    @@all
  end

end
