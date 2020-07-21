# Write a method, union, that accepts any number of arrays as arguments.
# The method should return an array containing all elements of the given arrays.

def union(*arr)
    big_arr = []
    arr.each_with_index do |ele, i|
        ele.each_with_index do |el, j|
            big_arr << el
        end
    end
    return big_arr
end

p union(["a", "b"], [1, 2, 3]) # => ["a", "b", 1, 2, 3]
p union(["x", "y"], [true, false], [20, 21, 23]) # => ["x", "y", true, false, 20, 21, 23]
