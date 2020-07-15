# Write a method pig_latin_word that takes in a word string and translates 
# the word into pig latin.

# Pig latin translation uses the following rules:
# - for words that start with a vowel, add 'yay' to the end
# - for words that start with a nonvowel, move all letters before the first vowel to the end of the word and add 'ay'

def pig_latin_word(word)
  new_word = ""
  vowels = "aeiou"
  
  word.each_char.with_index do |char, i|
    if vowels.include?(word[0])
      new_word += word + "yay"
      return new_word
    elsif vowels.include?(char)
      new_word = word[i..-1] + new_word + "ay"
      return new_word
    else
      new_word << char
    end
  end
end

puts pig_latin_word("apple")   # => "appleyay"
puts pig_latin_word("eat")     # => "eatyay"
puts pig_latin_word("banana")  # => "ananabay"
puts pig_latin_word("trash")   # => "ashtray"