def staircase(num)
  i = 1
  hash = {}
  while i <= num
    if i.odd?
      hash[i] = []
      #array = []
    end
    i +=1
  end

  hash.each do |key, value|
    j = 1
    while j < key
      if j.even?
        value << j
      end
      j += 1
    end
  end

  puts hash
  hash
end

staircase 5
