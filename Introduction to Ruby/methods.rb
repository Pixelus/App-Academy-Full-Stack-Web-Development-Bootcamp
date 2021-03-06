gets()
# EASY

# Write a method that returns the least common multiple of its two arguments.
# You may use the lcm method.
def my_lcm(int_one, int_two)
  # your code goes here
  return int_one.lcm(int_two)
end

# Write a method that returns its argument converted to a float then 
# converted to a string.
def to_stringified_float(int)
  # your code goes here
  return (int.to_f).to_s
end

# Write a method that returns the sum of the absolute values of its arguments.
def absolute_sum(num_one, num_two)
  # your code goes here
  return (num_one.abs + num_two.abs)
end

# Write a method that returns the negative value of its argument.
# If the argument is negative, the method simply returns the argument.
# (negative(-1) => -1, negative(1) => -1, negative(0) => 0)
# HINT: use the abs method
def negative(num)
  # your code goes here
  if num < 0
    return num
  elsif num == 0
    return 0
  else
    return -num
  end
end


# MEDIUM

# Write a method that returns the last digit of its argument.
# Assume the argument is an integer.
# HINT: What is the return value of 142 % 10? How about 2 % 10?
def last_digit(int)
  # your code goes here
  return int % 10
end

# Write a method that returns a boolean indicating whether 
# the last digit of the method's argument is odd.
# Assume the argument is an integer.
# Bonus points if you use last_digit as a helper method.
def last_digit_odd?(int)
  # your code goes here
  if (int % 10) % 2 == 0
    return false
  else 
    return true
  end
end

# Write a method that returns the greatest common divisor of the last 
# digit of each of its arguments. Assume the arguments are integers.
# (gcd_of_last_digits(93, 9) = 3.gcd(9) => 3)
# Bonus points if you use last_digit as a helper method.
def gcd_of_last_digits(int_one, int_two)
  # your code goes here
  int_one.gcd(int_two)
  if int_one % 10 < int_two % 10
    return int_one % 10
  else
    return int_two % 10
  end
end

# Write a method that returns the last n digits of its first argument,
# where n is the second argument.
# Assume both arguments are non-zero integers.
# (last_n_digits(1234, 2) => 34)
# HINT: What is the return value of 1234 % 100? How about 4 % 100?
def last_n_digits(num, n)
  # your code goes here
  if n == 1
    return num % 10
  else
  	return num % 100
  end
end


#HARD

# Write a method that returns the decimal remainder of dividing two floats.
# The decimal remainder is the right side of the decimal point 
# (the "fractional part") of the quotient.
# (dec_remainder_of_two_floats(8.0, 5.0) => 0.6 because 8.0 / 5.0 => 1.6)
def dec_remainder_of_two_floats(f_dividend, f_divisor)
  # your code goes here
  remainer = (f_dividend / f_divisor) % 10
  return remainer - (f_dividend.to_i / f_divisor.to_i)
end

# Write a method that returns the decimal remainder of dividing two integers.
# HINT: Use dec_remainder_of_two_floats as a helper method,
# but don't forget to pass the proper type of argument
def dec_remainder_of_two_integers(i_dividend, i_divisor)
  # your code goes here
  return dec_remainder_of_two_floats(i_dividend.to_f, i_divisor.to_f)
end


# TESTING SUITE BELOW: DO NOT MODIFY

$success_count = 0
$failure_count = 0

def deep_dup(arr)
  arr.inject([]) { |acc, el| el.is_a?(Array) ? acc << deep_dup(el) : acc << el }
end

def note_success(returned, invocation, expectation)
  puts "success: #{invocation} => #{expectation}"
  $success_count += 1
end

def note_failure(returned, invocation, expectation)
  puts "failure: #{invocation}: expected #{expectation}, returned #{returned}"
  $failure_count += 1
end

def format_args(args)
  o_args = deep_dup(args)
  o_args.map! do |arg|
    prettify(arg)
  end
  o_args.join(', ')
end

def prettify(statement)
  case statement
  when Float
    statement.round(5)
  when String
    "\"#{statement}\""
  when NilClass
    "nil"
  else
    statement
  end
end

def equality_test(returned, invocation, expectation)
  if returned == expectation && returned.class == expectation.class
    note_success(returned, invocation, expectation)
  else
    note_failure(returned, invocation, expectation)
  end
end

def identity_test(returned, invocation, expectation, args)
  if returned.__id__ == args[0].__id__
    equality_test(returned, invocation, expectation)
  else
    puts "failure: #{invocation}: You did not mutate the original array!"
    $failure_count += 1
  end
end

def method_missing(method_name, *args)
  method_name = method_name.to_s
  expectation = args[-1]
  args = args[0...-1]
  if method_name.start_with?("test_")
    tested_method = method_name[5..-1]
    print_test(tested_method, args, expectation)
  else
    method_name = method_name.to_sym
    super
  end
end

def print_test(method_name, args, expectation)
  returned = self.send(method_name, *args)
  returned = prettify(returned)
  expectation = prettify(expectation)
  args_statement = format_args(args)
  invocation = "#{method_name}(#{args_statement})"
  method_name.include?("!") ? identity_test(returned, invocation, expectation, args) : equality_test(returned, invocation, expectation)
  rescue Exception => e
    puts "failure: #{invocation} threw #{e}"
    puts e.backtrace.select {|t| !t.include?("method_missing") && !t.include?("print_test")}
    $failure_count += 1
end

puts "\nmy_lcm:\n" + "*" * 15 + "\n"
test_my_lcm(9, 3, 9)
test_my_lcm(4, 6, 12)
puts "\nto_stringified_float:\n" + "*" * 15 + "\n"
test_to_stringified_float(2, "2.0")
test_to_stringified_float(0, "0.0")
puts "\nabsolute_sum:\n" + "*" * 15 + "\n"
test_absolute_sum(2, -2, 4)
test_absolute_sum(2, 2, 4)
puts "\nnegative:\n" + "*" * 15 + "\n"
test_negative(-1, -1)
test_negative(0, 0)
puts "\nlast_digit:\n" + "*" * 15 + "\n"
test_last_digit(1234, 4)
test_last_digit(0, 0)
puts "\nlast_digit_odd?:\n" + "*" * 15 + "\n"
test_last_digit_odd?(1234, false)
test_last_digit_odd?(1233, true)
puts "\ngcd_of_last_digits:\n" + "*" * 15 + "\n"
test_gcd_of_last_digits(93, 9, 3)
test_gcd_of_last_digits(42, 44, 2)
puts "\nlast_n_digits:\n" + "*" * 15 + "\n"
test_last_n_digits(1234, 2, 34)
test_last_n_digits(1234, 1, 4)
puts "\ndec_remainder_of_two_floats:\n" + "*" * 15 + "\n"
test_dec_remainder_of_two_floats(8.0, 5.0, 0.6)
test_dec_remainder_of_two_floats(10.0, 4.0, 0.5)
puts "\ndec_remainder_of_two_integers:\n" + "*" * 15 + "\n"
test_dec_remainder_of_two_integers(8, 5, 0.6)
test_dec_remainder_of_two_integers(10, 4, 0.5)
puts 
puts "TOTAL CORRECT: #{$success_count} / #{$success_count + $failure_count}"
puts "TOTAL FAILURES: #{$failure_count}"
$success_count = 0
$failure_count = 0
