N, M, X = gets.split.map(&:to_i)
CAs = N.times.map { gets.split.map(&:to_i) }

alls = [0] * M
effs = CAs.map.with_index { |line, i|
  c = line[0]
  [i] + line[1..-1].map.with_index { |a, i|
    alls[i] += a
    1.0 * a / c
  }
}

if alls.min < X
  puts "-1"
  exit
end

min_index = alls.index(alls.min) + 1

cost = 0
sum = 0
effs.sort_by { |line| line[min_index] }.reverse.each do |line|
  j = line[0]
  sum += CAs[j][min_index]
  cost += CAs[j][0]
  break if sum >= X
end

puts cost

# WA
# N, M少ないので全探索でよさげ
