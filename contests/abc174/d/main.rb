gets
Cs = gets.chomp

windex = []
rindex = []
Cs.length.times.each do |i|
  if Cs[i] == "W"
    windex.push(i)
  else
    rindex.push(i)
  end
end
rindex = rindex.reverse

count = [windex.size, rindex.size].min
count.times.each do |i|
  # puts "w#{windex[i]} r#{rindex[i]}"
  if windex[i] > rindex[i]
    puts i
    exit
  end
end

puts count
