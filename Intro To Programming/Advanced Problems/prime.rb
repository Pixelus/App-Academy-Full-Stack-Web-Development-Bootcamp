# Write a method prime? that takes in a number and returns a boolean, indicating whether the number is prime. A prime number is only divisible by 1 and itself.

def prime?(num)
  divisor = 0
  (1..num).each do |ele|
    if num % ele == 0
      divisor += 1
    end 
  end
  if divisor == 2
    return true
  else
    return false
  end
end

puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false