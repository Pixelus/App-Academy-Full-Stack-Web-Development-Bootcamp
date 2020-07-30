# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def largest_prime_factor(num)
    largest_prime_factor = []
    (2...num).each do |factor|
        if num % factor == 0
            if factor % 2 != 0
                largest_prime_factor << factor
            end
        end
    end
    if largest_prime_factor.length > 0
       largest_prime_factor[-1]
    else
        num
    end
end

def unique_chars?(str)
    chars = Hash.new(0)
    str.each_char do |char| 
        chars[char] += 1 
        if chars[char] > 1
            return false
        end
    end
    true
end

def dupe_indices(arr)
    indices = Hash.new { |k, v| k[v] = [] }
    arr.each_with_index do |ele, index|
        indices[ele] << index
    end
    indices.select { |k, v| v.length > 1 }
end

def ana_array(arr_1, arr_2)
    hash_1 = Hash.new(0)
    hash_2 = Hash.new(0)
    arr_1.each do |ele|
        hash_1[ele] += 1
    end
    arr_2.each do |ele|
        hash_2[ele] += 1
    end
    if hash_1 == hash_2
        true
    else
        false
    end
end