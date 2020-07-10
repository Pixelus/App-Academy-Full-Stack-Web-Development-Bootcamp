# Write a method reverse_words that takes in a sentence string and returns the sentence 
# with the order of the characters in each word reversed. Note that we need to reverse the 
# order of characters in the words, do not reverse the order of words in the sentence.

def reverse_words(sent)
  words = sent.split(" ")
  reversed_sent = ""
  words.each {|word| reversed_sent = reversed_sent + " " + reverse_word(word)}
  return reversed_sent
end

def reverse_word(word)
  chars = word.split("")
  reversed_word = ""
  chars.each {|char| reversed_word = char + reversed_word}
  return reversed_word
end

puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'