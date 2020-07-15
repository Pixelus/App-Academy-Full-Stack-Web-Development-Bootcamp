# Write a method array_translate that takes in an array whose elements 
# alternate between words and numbers. The method should return a string where 
# each word is repeated the number of times that immediately follows in the array.

def array_translate(array)
  new_arr = []

  array.each_with_index do |ele,  i|
    num = array[i + 1]
    num.to_i.times { new_arr << array[i] }
  end

  return new_arr.join("").to_s
end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts