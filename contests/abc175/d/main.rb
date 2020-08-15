N, K = gets.split.map(&:to_i)
Ps = gets.split.map(&:to_i)
Cs = gets.split.map(&:to_i)

i = 2
sum = 0
k = N

loop do
  puts i
  sum += Cs[i]
  i = Ps[i] - 1
  k -= 1
  break if k == 0
end

# わからん
