def reverser(str, &block) 
    block.call(str.reverse)
end

def word_changer(str, &block)
    new_str = []
    str.split(" ").each { |word| new_str << block.call(word)}
    new_str.join(" ")
end

def greater_proc_value(num, proc_1, proc_2)
    if proc_1.call(num) > proc_2.call(num)
        return proc_1.call(num)
    else
        return proc_2.call(num)
    end
end

def and_selector(arr, proc_1, proc_2)
    new_arr = []
    arr.each do |ele|
        if proc_1.call(ele) == true && proc_2.call(ele) == true
            new_arr << ele
        end
    end
    new_arr
end

def alternating_mapper(arr, proc_1, proc_2)
    new_arr = []
    arr.each_with_index do |ele, i|
        if i.even?
            new_arr << proc_1.call(ele)
        else
            new_arr << proc_2.call(ele)
        end
    end
    new_arr
end