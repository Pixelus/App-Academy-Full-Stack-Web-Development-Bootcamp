# Write a method unique_elements that takes in an array and returns a new array where 
# all duplicate elements are removed. Solve this using a hash.

# Hint: all keys of a hash are automatically unique

def unique_elements(arr)
  unique = []
  letters = Hash.new{0}
  arr.each do |ele|
    letters[ele] += 1
    if letters[ele] == 1
      unique << ele
    end
  end
  return unique
end

print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
puts