# Write a method anagrams? that takes in two words and returns a boolean indicating whether or not the words are anagrams. Anagrams are words that contain the same characters but not necessarily in the same order. Solve this without using .sort

def anagrams?(word1, word2)
  count1 = Hash.new(0)
  count2 = Hash.new(0)
  word1.each_char { |char| count1[char] += 1 }
  word2.each_char { |char| count2[char] += 1 }
  if count1 == count2
    return true
  else
    return false
  end
end

puts anagrams?("cat", "act")          #=> true
puts anagrams?("restful", "fluster")  #=> true
puts anagrams?("cat", "dog")          #=> false
puts anagrams?("boot", "bootcamp")    #=> false