# Write a method pick_primes that takes in an array of numbers and returns a new array containing only the prime numbers.

def pick_primes(numbers)
  return numbers.select { |number| prime?(number) }
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

print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
puts
print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
puts