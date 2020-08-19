class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }
  attr_reader :pegs

  def self.valid_pegs?(chars)
    chars.all? { |char| POSSIBLE_PEGS.has_key?(char.upcase) }
  end

  def initialize(chars)
    if Code.valid_pegs?(chars)
      @pegs = chars.map { |char| char.upcase }
    else
      raise "no valid pegs"
    end
  end

  def self.random(length)
    random_pegs = []
    length.times { random_pegs << POSSIBLE_PEGS.keys.sample }
    Code.new(random_pegs)
  end

  def self.from_string(pegs)
    Code.new(pegs.split(""))
  end

  def [](index)
    @pegs[index]
  end

  def length
    @pegs.length
  end

  def num_exact_matches(guess_code)
    exact_matches = 0
    (0...guess_code.length).each do |i|
      exact_matches += 1 if guess_code[i] == self.pegs[i]
    end
    exact_matches
  end

  def num_near_matches(guess_code)
    near_matches = 0
    (0...guess_code.length).each do |i|
      if self.pegs.include?(guess_code[i]) && guess_code[i] != self.pegs[i]
        near_matches += 1
      end
    end
    near_matches
  end

  def ==(guess_code)
    if self.pegs.length == guess_code.length && guess_code == self.pegs
      return true 
    end
    false
  end
end
