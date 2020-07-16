# Write a method element_count that takes in an array and returns a hash representing 
# the count of each element in the array.

def element_count(arr)
  count = {}
  arr.each do |ele|
    if count.has_key?(ele) == false
      count[ele] = 1
    else count.has_key?(ele) == true
      count[ele] += 1
    end
  end
  return count
end

puts element_count(["a", "b", "a", "a", "b"]) #=> {"a"=>3, "b"=>2}
puts element_count(["red", "red", "blue", "green"]) #=> {"red"=>2, "blue"=>1, "green"=>1}