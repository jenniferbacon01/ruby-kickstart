# Write a method that takes a string and returns a hash
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.
#
# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}

def word_count(string)
  array = string.downcase.split(" ").sort
  length = array.length
  hash = {}
  i = 0
  while i <= length -1
    if hash.has_key? (array[i])
      hash[array[i]] += 1
    else
      hash[array[i]]= 1
    end
    i += 1
  end
  puts hash
  hash
end

#word_count "the dog and the cat and the rat"
