def palindrome?(str)
    new_str = []
    word = str.split("")
    puts str
    puts word.join
    word.each do |ele|
        puts ele
        puts word.pop
        #new_str << word.pop
    end
    # puts new_str
    # if new_str == str
    #     return true
    # end
    false
end

def substrings(str)

end

def palindrome_substrings(str)

end

puts palindrome?("racecar")