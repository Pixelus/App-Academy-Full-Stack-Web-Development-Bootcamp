# Write a method frequent_letters that takes in a string and returns an array containing 
# the characters that appeared more than twice in the string.

def frequent_letters(string)
  count_letters = Hash.new{0}
  frequent_letter = []
  string.each_char do |char|
    count_letters[char] += 1
    if count_letters[char] > 2 && frequent_letter.include?(char) == false
      frequent_letter << char
    end
  end
  return frequent_letter.reverse
end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts