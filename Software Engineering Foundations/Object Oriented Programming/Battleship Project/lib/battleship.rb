require_relative "board"
require_relative "player"

class Battleship
    attr_reader :board, :player

    def initialize(n)
        @player = Player.new
        @board = Board.new(n)
        @remaining_misses = (n * n) / 2
    end

    def start_game
        @board.place_random_ships
        puts "Number of ships: #{@board.num_ships}"
        @board.print
    end

    def lose?
        if @remaining_misses <= 0
            print "you lose"
            return true
        end
        false
    end

    def win?
        @board.num_ships
        if @board.num_ships == 0
            puts "you win"
            return true
        end
        false
    end

    def game_over?
        return true if lose? || win?
        false
    end

    def turn
        position = @player.get_move
        @board.print
        if !@board.attack(position)
            @remaining_misses -= 1
        end
        puts "Remaining misses: #{@remaining_misses}"
    end
end
