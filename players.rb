class Player
    attr_accessor :name, :score

    def initialize(id)
        @name = id
        @score = 3
    end

    def deduct_point
        @score -= 1 
    end

end
