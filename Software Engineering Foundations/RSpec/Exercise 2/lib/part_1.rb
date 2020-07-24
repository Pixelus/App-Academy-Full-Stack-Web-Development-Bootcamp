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
    vowels = "aeiou"
    sentence.split(" ").each do |word|
        arr.each do |ele|
            if word.downcase.include?(ele) 
                puts "e"
                # ele.each_char.with_index do |char, i|
                #     if vowels.include?(ele)
                #         puts char
                #     end
                # end
            end
        end
    end
end

def power_of_two?(num)

end

puts censor("Gosh darn it", ["gosh", "darn", "shoot"])#("G*sh d*rn it")
puts censor("SHUT THE FRONT DOOR", ["door"])#("SHUT THE FRONT D**R")