class Trainer
    attr_accessor :name

    @@all = []

    # a trainer has many clients
    # a trainer has many locations thru clients

    def initialize(name)
        @name = name
        @@all << self
    end

    def clients
        Client.all.select { |c| c.trainer == self }
    end

    def client_count
        clients.count
    end

    def self.all
        @@all
    end

    def self.most_clients
        # return trainer with most clients
        most = self.all.max_by { |t| t.client_count }
        self.all.select { |t| t.client_count == most.client_count }
    end
end