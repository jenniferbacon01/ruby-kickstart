def shared(a, b)
  hash = {}
  nums =[]
  a.each_with_index do |i, index|
    if hash.has_key? (a[index])
      puts "already has it"
    else
      hash[a[index]]=[true, nil]
      puts "in a: #{a[i-1]}"
    end
  end
  b.each_with_index do |j, indexb|
    if hash.has_key? (b[indexb])
      hash[b[indexb]]=[true,true]
      nums << b[indexb]
      puts "nums: #{b[indexb]} j: #{j}"
    else
      hash[b[indexb]]=[nil,true]
      puts "in b: #{b[indexb]} j: #{j}"
    end
  end
  answer = [hash, nums]
  p answer
  answer

end

shared [1,2,3], [1,2,4]
