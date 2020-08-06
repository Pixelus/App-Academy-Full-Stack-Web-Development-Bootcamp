def my_map(arr, &block)
    new_arr = []
    arr.each { |ele| new_arr << block.call(ele) }
    new_arr
end

def my_select(arr, &block)
    new_arr = []
    arr.each { |ele| new_arr << ele if block.call(ele) == true }
    new_arr
end

def my_count(arr, &block)
    count = 0
    arr.each { |ele| count += 1 if block.call(ele) == true }
    count
end

def my_any?(arr, &block)
    new_arr = []
    arr.each { |ele| new_arr << true if block.call(ele) == true }
    new_arr == [] ? false : true
end

def my_all?(arr, &block)
    new_arr = []
    arr.each { |ele| new_arr << false if block.call(ele) == false }
    new_arr == [] ? true : false
end

def my_none?(arr, &block)
    new_arr = []
    arr.each { |ele| new_arr << true if block.call(ele) == true }
    new_arr == [] ? true : false
end