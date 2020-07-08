# Write a method select_odds(numbers) that takes in an array of numbers and 
# returns a new array containing the odd numbers of the original array.

def select_odds(numbers)
  odd_numbers = []
  i = 1
  
  if numbers[0] % 2 != 0
    odd_numbers << numbers[0]
  end
  
  while i < numbers.length
    if numbers[i] % i != 0
      odd_numbers << numbers[i]
    end  
    i += 1
  end
  
  return odd_numbers
end

print select_odds([13, 4, 3, 7, 6, 11]) # => [13, 3, 7, 11]
puts
print select_odds([2, 4, 6])            # => []