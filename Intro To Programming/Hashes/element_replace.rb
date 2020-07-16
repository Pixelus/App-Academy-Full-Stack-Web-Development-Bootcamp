# Write a method element_replace that takes in an array and a hash. The method should return 
# a new array where elements of the original array are replaced with their corresponding values in the hash.

def element_replace(arr, hash)
  new_arr = []
  arr.each do |ele|
    if hash.has_key?(ele) == true
      new_arr << hash[ele]
    else
      new_arr << ele
    end
  end
  return new_arr
end

arr1 = ["LeBron James", "Lionel Messi", "Serena Williams"]
hash1 = {"Serena Williams"=>"tennis", "LeBron James"=>"basketball"}
print element_replace(arr1, hash1) # => ["basketball", "Lionel Messi", "tennis"]
puts

arr2 = ["dog", "cat", "mouse"]
hash2 = {"dog"=>"bork", "cat"=>"meow", "duck"=>"quack"}
print element_replace(arr2, hash2) # => ["bork", "meow", "mouse"]
puts