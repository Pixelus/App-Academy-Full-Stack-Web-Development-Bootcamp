# Write a method combinations that takes in an array of unique elements, 
# the method should return a 2D array representing all possible combinations 
# of 2 elements of the array.

def combinations(arr)
  pairs = []
  arr.each do |ele1|
    arr.each do |ele2|
      if ele2 > ele1
        pairs << [ele1, ele2]
      end
    end
  end
  return pairs
end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts