def is_prime?(num)
    factors = 0
    (1..num).each { |factor| factors += 1 if num % factor == 0 }
    return true if factors == 2
    false
end

def nth_prime(n)
    primes = []
    number = 1
    while primes.length < n
        number += 1
        primes << number if is_prime?(number)
    end
    number
end

def prime_range(min, max)
    prime_numbers = []
    (min..max).each { |num| prime_numbers << num if is_prime?(num) }
    prime_numbers
end