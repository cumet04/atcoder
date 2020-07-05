N = gets.to_i
AS = gets.split.map(&:to_i)

sorted = AS.sort.reverse
score = 0
semimax_i = 0

(sorted.length - 1).times.each do |i|
  score += sorted[semimax_i]
  semimax_i += 1 if i % 2 == 0
  i += 1
end

puts score
