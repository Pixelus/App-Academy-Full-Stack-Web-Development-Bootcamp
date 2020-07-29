def palindrome?(str)
    new_str = ""
    str.each_char.with_index do |char, i|
        if str[i] == str[-i - 1]
            new_str << char
        end
    end
    if new_str == str
        return true
    else
        return false
    end
end

def substrings(str)
    arr = []
    (0...str.length).each do |start_index|
        (0...str.length).each do |end_index|
            if str[start_index..end_index] != ""
                arr << str[start_index..end_index]
            end
        end
    end
    arr
end

def palindrome_substrings(str)
    substrings(str).select { |substring| palindrome?(substring) == true && substring.length > 1 }
end