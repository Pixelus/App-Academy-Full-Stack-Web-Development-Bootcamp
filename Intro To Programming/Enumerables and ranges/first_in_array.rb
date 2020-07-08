# Write a method first_in_array that takes in an array and two elements, 
# the method should return the element that appears earlier in the array.

def first_in_array(arr, el1, el2)
  
  first_el = []
  
  arr.each_with_index do |element, i|
    if(element == el1 || element == el2)
      first_el << element
    end
  end
  
  return first_el[0]

end

puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"