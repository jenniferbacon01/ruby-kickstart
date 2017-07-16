# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(num)
  i = 1
  j = 1
  hash = {}
  array = []
  while i <= num
    if i.odd?
      while j < i
        if j.even?
          array << j
        end
        j += 1
      end
      puts "key #{i} value #{array}"
      hash[i] = array
      #array = []
    end
    i +=1
  end
  puts hash
  hash
end
puts "staircase 1"
staircase 1
puts "staircase 3"
staircase 3
puts "staircase 5"
staircase 5
