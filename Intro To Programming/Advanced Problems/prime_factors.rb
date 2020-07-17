# Write a method prime_factors that takes in a number and returns an array containing all of the prime factors of the given number.

def prime_factors(num)
  factors = []
  (1..num).each do |ele|
    if num % ele == 0 && prime?(ele)
      factors << ele
    end
  end
  return factors
end

def prime?(num)
  divisor = 0
  (1..num).each do |ele|
    if num % ele == 0
      divisor += 1
    end 
  end
  if divisor == 2
    return true
  end
  return false
end

print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts