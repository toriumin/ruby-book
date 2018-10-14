class Gate
    def initialize(name)
        @name = name
    end

    def enter(ticket)
    end

    def exit(ticket)
        true
    end

    def enter(ticket)
        ticket.stamp(@name)
    end

    def stamp(name)
        @stamped_at = name
    end
end