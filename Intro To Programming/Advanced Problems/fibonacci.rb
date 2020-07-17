def fibonacci(length)
  sequence = [1, 1]
  if length == 0
    sequence = []
  elsif length == 1
    sequence = [1]
  else
    while sequence.length < length
      sequence << sequence[-1] + sequence[-2]
    end
  end
  return sequence
end

print fibonacci(0) # => []
puts
print fibonacci(1) # => [1]
puts
print fibonacci(6) # => [1, 1, 2, 3, 5, 8]
puts
print fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
puts