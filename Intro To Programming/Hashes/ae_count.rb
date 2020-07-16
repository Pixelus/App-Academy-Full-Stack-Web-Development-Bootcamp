# Write a method ae_count that takes in a string and returns a hash containing the number of a's and e's in the string. 
# Assume the string contains only lowercase characters.

def ae_count(str)
  ae_hash = {"a" => 0, "e" => 0}
  a_counter = 0
  e_counter = 0
  str.each_char do |char|
    if char == "a"
      a_counter +=1
      ae_hash["a"] = a_counter
    elsif char == "e"
      e_counter += 1
      ae_hash["e"] = e_counter 
    end
  end
  return ae_hash
end

puts ae_count("everyone can program") #=> {"a"=>2, "e"=>3}
puts ae_count("keyboard") #=> {"a"=>1, "e"=>1}