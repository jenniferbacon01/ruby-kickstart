# # You have two different problems to solve, you must get which one it is from a hash
# # The default value for the hash should be :count_clumps
# # If no hash is provided, choose count_clumps
# #
# # PROBLEM: count_clumps
# # Say that a "clump" in an array is a series of 2 or more adjacent elements of the same value.
# # Return the number of clumps in the given arguments.
# #
# # problem_14 1, 2, 2, 3, 4, 4, :problem => :count_clumps    # => 2
# # problem_14 1, 1, 2, 1, 1,    :problem => :count_clumps    # => 2
# # problem_14 1, 1, 1, 1, 1,    :problem => :count_clumps    # => 1
# #
# #
# # PROBLEM: same_ends
# # Return true if the group of N numbers at the start and end of the array are the same.
# # For example, with [5, 6, 45, 99, 13, 5, 6], the ends are the same for n=0 and n=2, and false for n=1 and n=3.
# # You may assume that n is in the range 0..nums.length inclusive.
# #
# # The first parameter will be n, the rest will be the input to look for ends from
# # problem_14 1,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => false
# # problem_14 2,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => true
# # problem_14 3,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => false
#
# def problem_14(array3)
#   problem = :count_clumps
#   array3.each do |a|
#     if a.is_a? Hash
#       if a.has_value?(:same_ends)
#         problem = :same_ends
#         array3.delete(a)
#       end
#     end
#   end
#   if problem == :count_clumps
#     count_clumps(array3)
#   else
#     same_ends(array3)
#   end
#
# end
#
# def same_ends(array2)
#   n = array2.shift
#   p array2
#   length2 = array2.length
#   j = 0
#   answer = true
#   while j < n
#     if array2[j] != array2[length2-n+j]
#       answer = false
#     end
#     puts "start #{array2[j]} end #{array2[length2-n+j]}"
#     j += 1
#   end
#   puts answer
#   answer
# end
#
# # puts "test1"
# # same_ends [1,   5, 6, 45, 99, 13, 5, 6]
# # puts "test2"
# # same_ends [2,   5, 6, 45, 99, 13, 5, 6]
# # puts "test3"
# # same_ends [3,   5, 6, 45, 99, 13, 5, 6]
#
#
# def count_clumps(array)
#   count = 0
#   i = 1
#   length = array.length
#   same_clump = false
#   while i < length
#     if array[i] == array[i-1]
#       if same_clump == false
#         count += 1
#       end
#       same_clump = true
#     else
#       same_clump = false
#     end
#     i += 1
#   end
#   puts count
#   count
# end
# # puts "first test"
# # count_clumps [ 1, 2, 2, 3, 4, 4]
# # puts "second test"
# # count_clumps [ 1, 1, 2, 1, 1]
# # puts "third test"
# # count_clumps [ 1, 1, 1, 1, 1]

def problem_14(*params)
  problem = params.pop[:problem] if params.last.is_a? Hash
  problem ||= :count_clumps

  return count_clumps(*params) if problem == :count_clumps
  return same_ends(*params)    if problem == :same_ends
end

def count_clumps(*numbers)
  clumps     = 0
  previous   = nil
  two_before = nil

  numbers.each do |number|
    clumps += 1 if (previous == number) && (previous != two_before)
    two_before = previous
    previous   = number
  end
  clumps
end

def same_ends(n, *params)
  params[0, n] == params[-n, n]
end
