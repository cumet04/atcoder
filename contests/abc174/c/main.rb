K = gets.to_i

# if [0, 2, 4, 5, 6, 8].include?(K[-1].to_i)
#   puts "-1"
#   exit
# end

a = K % 10
amap = 10.times.map { |i|
  [a * i % 10, i]
}.to_h

x = 0

999983.times.each do |i|
  a = K % 10 ** (i + 1)
  b = a * x
  c = (b / (10 ** i)) % 10
  d = 7 - c
  d = d >= 0 ? d : 10 + d
  # puts "#{a} #{b} #{c} #{d}"
  if amap[d].nil?
    puts "-1"
    exit
  end
  x += 10 ** i * amap[d]
  # puts x
end

# なんもわからん
