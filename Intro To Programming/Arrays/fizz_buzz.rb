# Write a method fizz_buzz(max) that takes in a number max and returns an array containing all numbers greater than 0 and less than 
# max that are divisible by either 4 or 6, but not both.

def fizz_buzz(max)
  div_by_4_or_6 = []
  i = 0
  
  while i < max
  	if i > 0 && (i % 4 == 0 && i % 6 != 0) || (i % 6 == 0 && i % 4 != 0)
      div_by_4_or_6 << i
    end  
    i += 1
  end  
  
  return div_by_4_or_6
end

print fizz_buzz(20) # => [4, 6, 8, 16, 18]
puts
print fizz_buzz(15) # => [4, 6, 8]