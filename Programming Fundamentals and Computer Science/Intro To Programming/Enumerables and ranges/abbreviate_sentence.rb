# Write a method abbreviate_sentence that takes in a sentence string 
# and returns a new sentence where every word longer than 4 characters 
# has all of it's vowels removed.

def abbreviate_sentence(sent)

    new_words = []
    words = sent.split(" ")

    words.each do |word|
        if word.length > 4
            new_word = abbreviate_word(word)
            new_words << new_word
        else
            new_words << word
        end
    end

    return new_words.join(" ")
end

def abbreviate_word(word)
    new_word = ""

    word.each_char do |char|
        if (char == "a" || char == "e" || char == "i" || char == "o" || char == "u") 
            char = ""
        end
        new_word << char
    end

    return new_word
end

puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"