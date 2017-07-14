# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime.
#
# Remember that a number is prime if the only integers that can divide it with no remainder are 1 and itself.
#
# Examples of length three
# prime_chars? ['abc']            # => true
# prime_chars? ['a', 'bc']        # => true
# prime_chars? ['ab', 'c']        # => true
# prime_chars? ['a', 'b', 'c']    # => true
#
# Examples of length four
# prime_chars? ['abcd']           # => false
# prime_chars? ['ab', 'cd']       # => false
# prime_chars? ['a', 'bcd']       # => false
# prime_chars? ['a', 'b', 'cd']   # => false

def prime_chars?(strings)
  sum = 0
  strings.each do |str|
    sum += str.length
  end
  if sum == 0
    prime = false
  elsif sum == 1
    prime = false
  elsif sum == 2
    prime = true
  end
  i = 2

  while i <= sum -1
    if sum % i != 0
      prime = true
    else
      prime = false
      break
    end
    puts "i #{i} prime #{prime}"
    i += 1
  end
  prime
end
