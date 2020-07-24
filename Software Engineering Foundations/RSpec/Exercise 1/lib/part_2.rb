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
    shifted_str = ""
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    message.split(" ").each do |word|
        word.each_char do |char|
            if alphabet.include?(char)
                shifted_str << alphabet[n] % 26
            else
                shifted_str << char
            end
        end
    end
    return shifted_str
end

puts vowel_counts("code bootcamp")
puts vowel_counts("williamsburg bridge")
puts vowel_counts("WILLIAMSBURG bridge")

# puts caesar_cipher("123 _-!?@%", 3) # "123 _-!?@%"
# puts caesar_cipher("welcome to week 3, day 1", 2)
# puts caesar_cipher("hello world!", 1) # "ifmmp xpsme!"