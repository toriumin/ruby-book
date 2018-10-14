class Ticket

    attr_reader :fare, :stamped_at
    def initialize(fare)
        @fare = fare
    end
end