require_relative "code"

class Mastermind
    
    def initialize(length)
        @secret_code = Code.random(length)
    end

    def print_matches(guess_code)
        print "/#{@secret_code.num_exact_matches(guess_code)}/"
        print "/#{@secret_code.num_near_matches(guess_code)}/"
    end

    def ask_user_for_guess
        puts "Enter a code"
        code = gets.chomp
        Code.from_string(code)
        print "/#{@secret_code.num_exact_matches(code)}/"
        print "/#{@secret_code.num_near_matches(code)}/"
        return true if @secret_code == Code.from_string(code)
        false
    end
end
