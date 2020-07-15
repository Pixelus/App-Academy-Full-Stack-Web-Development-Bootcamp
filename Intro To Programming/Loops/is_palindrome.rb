# Write a method is_palindrome(word) that takes in a string word and returns the true if the word is a palindrome, false otherwise. 
# A palindrome is a word that is spelled the same forwards and backwards.

def is_palindrome(word)
  palindrome = false
  reversed_str = ""

  i = 0
  
  while i < word.length
    reversed_str = word[i] + reversed_str
    i += 1
  end
  
  if reversed_str == word
    palindrome = true
  end
  
  return palindrome
end

puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false