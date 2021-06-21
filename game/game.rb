class Game 
    attr_reader :rolls
    attr_reader :score
    def initialize
        @rolls[]
        @score=0
    
    end

    def pines(pines_knocks)
        @rolls.push pines_knocks
    end 


    def start_rolls
        score_board=Score.new(@rolls)
        cont_roll=0
        20.times             
            if score_board.strike?
                @score += score_board.strikeScore(cont_roll)
                cont_roll += 1
            elsif score_board.spare?
                @score += score_board.spareScore(cont_roll)
                cont_roll += 2
            else
                @score += score_board.frameScore(cont_roll)
                cont_roll += 2
            end
        end    
        @score
    end
end
