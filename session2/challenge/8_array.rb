# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
  i = 0
  length = array.length
  three = false
  while i < length
    if array[i] == array[i+1]
      if array[i+1] ==array[i+2]
        three = true
        break
      end
    end
    i += 1
  end
  three
end
