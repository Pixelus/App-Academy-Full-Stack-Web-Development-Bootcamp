# Write a method, count_vowels(word), that takes in a string word and returns 
# the number of vowels in the word. Vowels are the letters a, e, i, o, u.

def count_vowels(word)
  vowels = 0
  i = 0
  while i <= word.length
    if word[i] == "a" || word[i] == "e" || word[i] == "i" || word[i] == "o" || word[i] == "u"
      vowels += 1
    end
    i += 1
  end
  return vowels
end

puts count_vowels("bootcamp")  # => 3
puts count_vowels("apple")     # => 2
puts count_vowels("pizza")     # => 2