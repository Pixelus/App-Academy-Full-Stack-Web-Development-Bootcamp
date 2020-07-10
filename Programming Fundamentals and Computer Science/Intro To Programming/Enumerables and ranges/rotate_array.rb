# Write a method rotate_array that takes in an array and a number. The method should 
# return the array after rotating the elements the specified number of times. A single 
# rotation takes the last element of the array and moves it to the front.

def rotate_array(arr, num)
  i = 0
  num.times do
    # Takes the last element
    last_element = arr.pop()
    # Moves the last element to the front
    arr.unshift(last_element)
  end
  return arr
end

print rotate_array([ "Matt", "Danny", "Mashu", "Matthias" ], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
puts

print rotate_array([ "a", "b", "c", "d" ], 2) # => [ "c", "d", "a", "b" ]
puts