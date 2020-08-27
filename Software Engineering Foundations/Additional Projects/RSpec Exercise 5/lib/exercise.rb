def zip(*arr)
    
end
array_1 = ['a', 'b', 'c']
array_2 = [1, 2, 3]
p zip(array_1, array_2) # [["a", 1], ["b", 2], ["c", 3]]

def prizz_proc(arr, proc_1, proc_2)
    arr.select do |ele|
        ele if (proc_1.call(ele) && !proc_2.call(ele)) || (!proc_1.call(ele) && proc_2.call(ele))
    end
end

def zany_zip(*arr)

end

def maximum(arr, &prc)

end

def my_group_by(arr, &prc)

end

def max_tie_breaker(arr, *prc)

end

def silly_syllables(sentence)
    new_sentence = ""
    vowels_count = 0
    vowels = "aeiou"

    sentence.each_char.with_index do |char, index|
        if vowels.include?(char)
            vowels_count += 1 
            letter_before_first_vowel = sentence[0...index]
            
            new_sentence << 
        end
    end
    #new_sentence = sentence if vowels_count < 2
    new_sentence
end

p silly_syllables('properly and precisely written code')
# 'ope and ecise itte ode'
p silly_syllables('properly precisely written code')
# 'ope ecise itte ode'