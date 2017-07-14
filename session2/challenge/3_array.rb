# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    nstring = ""
    each_char.with_index {| a, index | nstring << a if index.even? }
    nstring
  end
end
