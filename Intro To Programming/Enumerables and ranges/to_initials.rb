# Write a method to_initials that takes in a person's name string and returns 
# a string representing their initials.

def to_initials(name)
  
  # Convert string in array
  names = name.split(" ") 
  
  initials = ""
  
  # Collect first letter from each element in array
  names.each_with_index { |name, i| initials += names[i][0] }
  
  return initials
  
end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"