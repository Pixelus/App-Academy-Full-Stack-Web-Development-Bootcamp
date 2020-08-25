#---------------------------- General Problems --------------------------------
# Write a method no_dupes?(arr) that accepts an array as an arg and returns an
# new array containing the elements that were not repeated in the array.
#
# Examples
# no_dupes?([1, 1, 2, 1, 3, 2, 4])         # => [3, 4]
# no_dupes?(['x', 'x', 'y', 'z', 'z'])     # => ['y']
# no_dupes?([true, true, true])            # => []

def no_dupes?(arr)
    elements = Hash.new(0)
    unique_elements = []
    arr.each { |k, v| elements[k] += 1 }
    elements.each_key { |key| unique_elements << key if elements[key] == 1 }
    unique_elements
end


# Write a method no_consecutive_repeats?(arr) that accepts an array as an arg.
# The method should return true if an element never appears consecutively in 
# the array; it should return false otherwise.
#
# Examples
# no_consecutive_repeats?(['cat', 'dog', 'mouse', 'dog'])     # => true
# no_consecutive_repeats?(['cat', 'dog', 'dog', 'mouse'])     # => false
# no_consecutive_repeats?([10, 42, 3, 7, 10, 3])              # => true
# no_consecutive_repeats?([10, 42, 3, 3, 10, 3])              # => false
# no_consecutive_repeats?(['x'])                              # => true

def no_consecutive_repeats?(arr)
    consecutive = true
    arr.each_with_index do |ele, index|
        consecutive = false if arr[index] == arr[index + 1]
    end
    consecutive
end


# Write a method char_indices(str) that takes in a string as an arg. The 
# method should return a hash containing characters as keys. The value 
# associated with each key should be an array containing the indices where 
# that character is found.
#
# Examples
# char_indices('mississippi')   # => {"m"=>[0], "i"=>[1, 4, 7, 10], "s"=>[2, 3, 5, 6], "p"=>[8, 9]}
# char_indices('classroom')     # => {"c"=>[0], "l"=>[1], "a"=>[2], "s"=>[3, 4], "r"=>[5], "o"=>[6, 7], "m"=>[8]}

def char_indices(str)
    indices = Hash.new { |h, k| h[k] = [] }
    str.each_char.with_index { |char, index| indices[char] << index }
    indices
end


# Write a method longest_streak(str) that accepts a string as an arg. The 
# method should return the longest streak of consecutive characters in the 
# string. If there are any ties, return the streak that occurs later in the 
# string.
#
# Examples
# longest_streak('a')           # => 'a'
# longest_streak('accccbbb')    # => 'cccc'
# longest_streak('aaaxyyyyyzz') # => 'yyyyy
# longest_streak('aaabbb')      # => 'bbb'
# longest_streak('abc')         # => 'c'

def longest_streak(str)
    longest_streak = ""
    count = Hash.new(0)

    str.each_char { |char| count[char] += 1 }
    sorted_count = count.sort_by { |k, v| v }
    letter = sorted_count[-1][0]
    num = sorted_count[-1][1]
    num.times { longest_streak << letter }

    longest_streak
end


------------------------------------------------------------------------
--> def bi_prime?(num)
------------------------------------------------------------------------







# A Caesar cipher takes a word and encrypts it by offsetting each letter in 
# the word by a fixed number, called the key. Given a key of 3, for example: 
# a -> d, p -> s, and y -> b.
#
# A Vigenere Cipher is a Caesar cipher, but instead of a single key, a
# sequence of keys is used. For example, if we encrypt "bananasinpajamas" with 
# the key sequence 1, 2, 3, then the result would be "ccqbpdtkqqcmbodt":
#
# Message:  b a n a n a s i n p a j a m a s
# Keys:     1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1
# Result:   c c q b p d t k q q c m b o d t
#
# Write a method vigenere_cipher(message, keys) that accepts a string and a 
# key-sequence as args, returning the encrypted message. Assume that the 
# message consists of only lowercase alphabetic characters.
#
# Examples
# vigenere_cipher("toerrishuman", [1])        # => "upfssjtivnbo"
# vigenere_cipher("toerrishuman", [1, 2])     # => "uqftsktjvobp"
# vigenere_cipher("toerrishuman", [1, 2, 3])  # => "uqhstltjxncq"
# vigenere_cipher("zebra", [3, 0])            # => "ceerd"
# vigenere_cipher("yawn", [5, 1])             # => "dbbo"

def vigenere_cipher(message, keys)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    encrypted_message = ""

    message.each_char.with_index do |char, index|
        old_index = alphabet.index(char)
        new_index = old_index.to_i + keys[index % (keys.length)].to_i
        new_char = alphabet[new_index % 26] 
        encrypted_message << new_char
    end

    encrypted_message
end






------------------------------------------------------------------------
--> def vowel_rotate(str)
--> class String
    def select()
--> class String
    def map()
--> def multiply(a, b)
--> def lucasSequence(num)
--> def prime_factorization(num)
------------------------------------------------------------------------
