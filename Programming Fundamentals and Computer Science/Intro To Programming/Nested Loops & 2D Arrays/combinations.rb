# Write a method combinations that takes in an array of unique elements, 
# the method should return a 2D array representing all possible combinations 
# of 2 elements of the array.

def combinations(arr)
  combo = ""
  i = 0
  j = 0

  while (i < arr.length)
    print i 
    print " --- " 
    puts arr[i]
    while (j < arr.length)
      if arr[j] == arr[i]
        set = arr[i][j]
        combo = combo + set.to_s
      end
      j += 1
    end
    i += 1
  end

  return combo

  # arr.each_with_index do |ele, i|
  #   arr.each_with_index do |ele, j|
  #     if arr[j] != arr[i]
  #       puts arr[i][j]
  #     end
  #   end
  # end
end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

#print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
#puts