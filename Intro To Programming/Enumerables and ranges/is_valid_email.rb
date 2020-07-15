# Write a method is_valid_email that takes in a string and 
# returns a boolean indicating whether or not it is a valid email address.

# For simplicity, we'll consider an email valid when it satisfies all of the following:
# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @

def is_valid_email(str)
  email_parts = str.split("@")

  # contains exactly one @ symbol
  if email_parts.length != 2
    return false
  # contains only lowercase alphabetic letters before the @
  elsif (email_parts[0] != email_parts[0].downcase) || is_a_number(email_parts[0])
    return false 
  # contains exactly one . after the @
  elsif ((email_parts[1].split(".")).length) != 2
    return false
  else
    return true
  end
end

def is_a_number(str)
  numbers = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
  str.each_char do |char|
    if numbers.include?(char)
      return true
    end
  end
  return false
end

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false