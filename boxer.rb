class Player
    def initialize(name)
        @name = name
        @health = 16
        @moves_arr = ["high", "mid", "low"]
    end

    def name
        @name
    end

    def name=(str)
        @name = str
    end

    def health
        @health
    end

    def lose_health(num)
        @health = @health - num
    end

    def attack_amt
        return rand(5)
    end

    def throw_punch
        num_arr = (1..@moves_arr.length).to_a.map { |num| num.to_s }
        player_move = gets.chomp.to_s
        if player_move.to_i <= @moves_arr.length && num_arr.any?(player_move)
            player_move = player_move.to_i - 1
            return @moves_arr[player_move]
        else
            p "Invalid Move"
            self.throw_punch
        end
    end

    def defend_punch
        num_arr = (1..@moves_arr.length).to_a.map { |num| num.to_s }
        player_move = gets.chomp.to_s
        if player_move.to_i <= @moves_arr.length && num_arr.any?(player_move)
            player_move = player_move.to_i - 1
            return @moves_arr[player_move]
        else
            p "Invalid Move"
            self.defend_punch
        end
    end

    def auto_punch
       random_num = rand(@moves_arr.length)
       return @moves_arr[random_num]
    end

    def auto_defend
       random_num = rand(@moves_arr.length)
       return @moves_arr[random_num]
    end
end

