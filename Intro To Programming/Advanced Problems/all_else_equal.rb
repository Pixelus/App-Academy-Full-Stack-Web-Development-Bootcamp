# Write a method all_else_equal that takes in an array of numbers. The method should return the element of the array that is equal to half of the sum of all elements of the array. If there is no such element, the method should return nil.

def all_else_equal(arr)
  if arr.include?(half_sum(arr))
    return half_sum(arr)
  else
    return nil
  end 
end

def half_sum(arr)
  sum = 0
  arr.each do |ele|
    sum += ele   
  end
  return sum / 2
end

p all_else_equal([2, 4, 3, 10, 1]) #=> 10, because the sum of all elements is 20
p all_else_equal([6, 3, 5, -9, 1]) #=> 3, because the sum of all elements is 6
p all_else_equal([1, 2, 3, 4])     #=> nil, because the sum of all elements is 10 and there is no 5 in the array