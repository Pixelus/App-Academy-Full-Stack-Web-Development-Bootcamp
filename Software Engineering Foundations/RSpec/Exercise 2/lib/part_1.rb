def partition(arr, num)
    new_arr = []
    first_arr = []
    second_arr = []
    arr.each do |ele|
        if ele < num
            first_arr << ele
        else 
            second_arr << ele
        end
    end
    new_arr << first_arr 
    new_arr << second_arr
    new_arr
end

def merge(hash_1, hash_2)
    new_hash = {}
    new_hash = hash_1.merge(hash_2)
    new_hash
end

def censor(sentence, arr)
    words = sentence.split(" ")
    star_words = words.map do |word|
        if arr.include?(word.downcase)
            star_vowels(word)
        else
            word
        end
    end 
    star_words.join(" ")
end

def star_vowels(str)
    vowels = "aeiou"
    new_str = ""
    str.each_char.with_index do |char, i|
        if vowels.include?(char.downcase)
            char = "*"
        else
            char
        end
        new_str << char 
    end
    new_str
end

def power_of_two?(num)
    if (num / 4) % 4 == 0
        true
    else
        false
    end
end