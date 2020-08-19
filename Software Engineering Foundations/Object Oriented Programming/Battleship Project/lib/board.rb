class Board
    attr_reader :size

    def initialize(n)
        @grid = Array.new(n, :N) {Array.new(n, :N)}
        @size = n * n
    end

    def [](position)
        row, col = position
        @grid[row][col]
    end

    def []=(position, value)
        row, col = position
        @grid[row][col] = value
    end

    def num_ships
        @grid.flatten.count { |ele| ele == :S }
    end

    def attack(position)
        @grid.[] = (position)
        #@grid.[]=(position, value)
        #@grid.[]=(position, value)
        #board[pos] = :S       # this line...
        #board.[]=(pos, :S)    # is same as this line. :)
    end

    def place_random_ships

    end

    def hidden_ships_grid

    end

    def self.print_grid()

    end

    def cheat

    end

    def print

    end
end
