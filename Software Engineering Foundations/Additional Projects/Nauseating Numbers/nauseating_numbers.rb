def strange_sums(numbers)
    count = 0
    numbers.each_with_index do |number, index|
        count += 1 if number + number[index + 1] == 0
    end
    count
end

p strange_sums([2, -3, 3, 4, -2]) # 2 
p strange_sums([42, 3, -1, -42]) # 1 
p strange_sums([-5, 5]) # 1 p strange_sums([19, 6, -3, -20]) # 0 
p strange_sums([9]) # 0