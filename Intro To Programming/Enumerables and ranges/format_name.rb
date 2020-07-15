# Write a method format_name that takes in a name string and 
# returns the name properly capitalized.

# Hint: use str.upcase and str.downcase
# "abc".upcase # => "ABC"

def format_name(str)
  new_str = []
  words = str.split(" ")
  words.each do |word|
    new_str << format_word(word)
  end
  return new_str.join(" ")
end

def format_word(word)
  new_name = ""
  letters = word.split(" ")
  letters.each_with_index do |letter, i|
    if letter[i][0]
      new_name << letter[i][0].upcase
    end
    new_name << letters[i][1..(letter.length)].downcase
  end
  return new_name
end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"