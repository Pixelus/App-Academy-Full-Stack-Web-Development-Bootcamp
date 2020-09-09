# Phase 1

def duos(string)
    count = 0
    string.each_char.with_index do |char, index|
        count += 1 if char == string[index + 1]
    end
    count
end

def sentence_swap(sentence, hash)
    new_sentence = []
    sentence.split(" ").each do |word|
        if hash.has_key?(word)
            word = hash[word]
            new_sentence << word
        else
            new_sentence << word
        end
    end
    new_sentence.join(" ")
end

def hash_mapped(hash, prc, prc)

end

double = Proc.new { |n| n * 2 }
p hash_mapped({'a'=>4, 'x'=>7, 'c'=>-3}, double) { |k| k.upcase + '!!' }
# {"A!!"=>8, "X!!"=>14, "C!!"=>-6}

first = Proc.new { |a| a[0] }
p hash_mapped({-5=>['q', 'r', 's'], 6=>['w', 'x']}, first) { |n| n * n }
# {25=>"q", 36=>"w"}

def counted_characters(string)

end

def triplet_true?(string)

end

def energetic_encoding(string, hash)

end

def uncompress(string)

end

# Phase 2