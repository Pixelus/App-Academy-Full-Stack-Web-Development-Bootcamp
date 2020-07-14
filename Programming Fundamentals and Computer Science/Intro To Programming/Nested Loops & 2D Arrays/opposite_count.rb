# Write a method opposite_count that takes in an array of unique numbers. 
# The method should return the number of pairs of elements that sum to 0.

def opposite_count(nums)
  pairs = 0
  nums.each do |num1|
    nums.each do |num2|
      if num1 + num2 == 0
        pairs += 1
      end
    end
  end
  return pairs / 2
end

puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1