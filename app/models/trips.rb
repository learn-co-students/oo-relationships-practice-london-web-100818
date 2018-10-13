class Trip
  attr_accessor :guest, :listing

  @@all = []

  # a trip belongs to a listing and a guest

  def initialize(guest, listing)
    @guest = guest
    @listing = listing
    @@all << self
  end

  # guest
    # return guest object for that trip??

    # listing
    # return listing object for that trip??

  def self.all
    @@all
  end

end
