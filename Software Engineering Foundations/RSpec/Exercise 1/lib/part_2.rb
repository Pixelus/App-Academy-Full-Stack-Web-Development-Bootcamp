def hipsterfy(word)
    vowels = "aeiou"
    new_word = word[0..word.length].reverse
    new_word.each_char.with_index do |char, i|
        if vowels.include?(char)
            last_vowel_index = i
            new_word[i] = ""
            word = new_word.reverse
            return word
        end
    end
    word
end

def vowel_counts(str)
    vowels = "aeiou"
    count = Hash.new(0)
    str.downcase.each_char do |char| 
        if vowels.include?(char)
            count[char] += 1 if char != " " 
        end
    end
    count
end

def caesar_cipher(message, n)
    shifted_message = ""
    alphabet = ("a".."z").to_a
    message.each_char do |char|
        old_index = alphabet.index(char)
        new_index = old_index.to_i + n
        if alphabet.include?(char)
            shifted_message << alphabet[new_index % 26]
        else
            shifted_message << char
        end
    end
    shifted_message
end

puts caesar_cipher("apple", 2) # bqqmf
puts caesar_cipher("whoa", 52) # whoa
puts caesar_cipher("123 _-!?@%", 3) # "123 _-!?@%"
puts caesar_cipher("welcome to week 3, day 1", 2) #ygneqog vq yggm 3, fca 1
puts caesar_cipher("hello world!", 1) # "ifmmp xpsme!"