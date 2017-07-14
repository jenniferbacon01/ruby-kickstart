# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
  attr_accessor :bottles
  def initialize(bottles)
    if bottles < 0
      bottles = 0
    elsif bottles > 99
      bottles = 99

    end
    self.bottles = bottles
  end

  def print_song
    bottles.downto 1 do |i|
      print_stanza i
    end
  end

  def print_stanza(n)
    if n.zero?
      String.new
    else
      puts "#{nums_to_words n} #{bottle n} of beer on the wall,\n#{nums_to_words n} #{bottle n} of beer,\nTake one down, pass it around,\n"
      puts "#{nums_to_words n-1} #{bottle n-1} of beer on the wall.\n"
    end
  end

  def bottle(n)
    if n == 1 then 'bottle' else 'bottles' end
  end

  def nums_to_words(n)
    if 0 <= n && n <= 19
      %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)[n]
    elsif n % 10 == 0
      %w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)[n/10]
    else
      "#{nums_to_words n/10*10}-#{nums_to_words n%10}".downcase
    end.capitalize
  end

#  def nums_to_words(n)
#    under20_hash = {0=>"zero",1=>"one",2=>"two",3=>"three",4=>"four",5=>"five",6=>"six",7=>"seven",8=>"eight",9=>"nine",
#                    10=>"ten",11=>"eleven",12=>"twelve",13=>"thirteen",14=>"fourteen",15=>"fifteen",16=>"sixteen",
#                     17=>"seventeen", 18=>"eighteen",19=>"nineteen"}
#    tens_hash = {2=>"twenty",3=>"thirty",4=>"forty",5=>"fifty",6=>"sixty",7=>"seventy",8=>"eighty",9=>"ninety"}
#    if n < 20
#      under20_hash[n-1].capitalize
#    elsif n%10 && n != 10
#      tens_hash[n-1]
#    else
#      tens_hash[n-1].capitalize + "-" + under20_hash[n-1]
#    end
#  end


end
