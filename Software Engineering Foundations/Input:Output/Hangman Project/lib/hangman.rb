class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  def self.random_word
    DICTIONARY.sample
  end

  def initialize
    @secret_word = Hangman.random_word 
    @guess_word = Array.new(@secret_word.length, "_")
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  def guess_word
    @guess_word
  end

  def attempted_chars
    @attempted_chars
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def already_attempted?(char)
    if attempted_chars.include?(char)
      return true
    end
    false
  end

  def get_matching_indices(char)
    indices = []
    @secret_word.each_char.with_index do |ele, i|
      indices << i if ele == char 
    end
    indices
  end

  def fill_indices(char, indices)
    indices.each do |ele|
      guess_word[ele] = char
    end 
    guess_word
  end

  def try_guess(char)
    if self.already_attempted?(char)
      puts "that has already been attempted"
      return false
    end

    matches = self.get_matching_indices(char)
    @remaining_incorrect_guesses -= 1 if matches == []
    self.fill_indices(char, get_matching_indices(char))

    @attempted_chars << char
    true
  end

  def ask_user_for_guess
    puts "Enter a char:"
    char = gets.chomp
    try_guess(char)
  end 

  def win?
    if self.guess_word.join("") == @secret_word
      puts "WIN" 
      return true
    end
    false
  end

  def lose?
    if remaining_incorrect_guesses == 0
      puts "LOSE"
      return true
    end
    false
  end

  def game_over?
    self.win?
    self.lose?
    if self.win? || self.lose?
      puts Hangman.random_word
      return true
    end
    false
  end
end
