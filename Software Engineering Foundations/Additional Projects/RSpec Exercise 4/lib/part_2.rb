def proper_factors(num)
    factors = []
    (1...num).each { |factor| factors << factor if num % factor == 0 }
    factors
end

def aliquot_sum(num)
    sum = 0
    proper_factors(num).each { |ele| sum += ele }
    sum
end

def perfect_number?(num)
    return true if aliquot_sum(num) == num
    false
end

def ideal_numbers(n)
    perfect_numbers = []
    number = 1
    while perfect_numbers.length < n
        number += 1
        perfect_numbers << number if perfect_number?(number)
    end
    perfect_numbers
end