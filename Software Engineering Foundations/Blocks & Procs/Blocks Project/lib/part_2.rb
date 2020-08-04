def all_words_capitalized?(arr)
    arr.all? do |word|
        word[0] == word[0].upcase && word[1..-1] == word[1..-1].downcase
    end
end

def no_valid_url?(urls_arr)
    valid_endings = [".com", ".net", ".io", ".org"]
    urls_arr.none? do |url|
        valid_endings.any? { |ending| url.end_with?(ending) }
    end
end

def any_passing_students?(arr)
    arr.any? { |ele| ele[:grades].sum / ele[:grades].count >= 75 }
end