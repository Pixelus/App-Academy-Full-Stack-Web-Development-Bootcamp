def select_even_nums(arr)
    new_arr = arr.select { |ele| ele.even? }
end

def reject_puppies(arr)
    new_arr = arr.reject { |ele| ele["age"] <= 2 }
end

def count_positive_subarrays(arr)
    new_arr = arr.count { |ele| ele.sum > 0 }
end

def aba_translate(str)
    vowels = "aeiou"
    new_word = ""
    str.each_char.with_index do |char, i|
        if vowels.include?(char)
            new_word += char + "b" + char
        else
            new_word += char    
        end
    end
    new_word
end

def aba_array(arr)
    new_arr = arr.map { |word| aba_translate(word) }
end