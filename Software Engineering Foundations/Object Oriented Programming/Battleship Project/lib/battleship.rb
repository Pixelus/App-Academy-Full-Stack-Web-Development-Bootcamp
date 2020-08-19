require_relative "board"
require_relative "player"

class Battleship
    attr_reader :board, :player

    def initialize(n)
        @player = Player.new
        #@board = n * n
        #@remaining_misses = n / 2
    end

    def start_game
        
    end

    def lose?
        if @remaining_misses <= 0
            print "you lose"
            return true
        end
        false
    end

    def win?
        false
    end

    def game_over?
        return true if lose? || win?
        #false
    end

    def turn
        #print @remaining_misses
    end
end
