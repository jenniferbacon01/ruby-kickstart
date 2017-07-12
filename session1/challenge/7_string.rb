# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  length = string.length
  i = 0
  string2 = ""
  while i < length
    if string[i] == "r" || string[i] =="R"
      string2.insert(-1,string[i+1]) unless i == length -1
    end
    i += 1
  end
  string2
end
