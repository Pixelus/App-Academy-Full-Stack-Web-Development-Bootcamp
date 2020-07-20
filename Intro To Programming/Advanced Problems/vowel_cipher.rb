# Write a method vowel_cipher that takes in a string and returns a new string where every vowel becomes the next vowel in the alphabet.

def vowel_cipher(string)
  new_string = ""
  string.each_char do |char|
    if char == "a"
      new_string << "e"
    elsif char == "e"
      new_string << "i"
    elsif char == "i" 
      new_string << "o"
    elsif char == "o"
      new_string << "u"
    elsif char == "u"
      new_string << "a"
    else
      new_string << char
    end
  end
  return new_string
end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap