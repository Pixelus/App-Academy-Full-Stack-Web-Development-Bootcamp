def average(num_1, num_2)
    (num_1 + num_2) / 2.0
end

def average_array(arr)
    sum = 0.0
    arr.each { |ele| sum += ele }
    sum / arr.length
end

def repeat(str, num)
    if num != 0
        new_str = p str * num
    else
        new_str = ""
    end
end

def yell(str)
    new_str = str.upcase + "!"
end

def alternating_case(sentence)
    new_sentence = sentence.split(" ").map.with_index do |word, i|
        if i.even?
            word.upcase
        else
            word.downcase
        end
    end
    sentence = new_sentence.join(" ")
end