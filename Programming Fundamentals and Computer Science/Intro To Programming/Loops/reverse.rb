# Write a method reverse(word) that takes in a string word and returns the word with its letters in reverse order.

def reverse(word)
  reversed_str = ""
  i = 0
  
  while i < word.length
    char = word[i]
    reversed_str = char + reversed_str
    i += 1
  end
  
  return reversed_str
end

puts reverse("cat")          # => "tac"
puts reverse("programming")  # => "gnimmargorp"
puts reverse("bootcamp")     # => "pmactoob"