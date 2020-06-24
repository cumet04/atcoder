N, K = gets.split.map(&:to_i)
P = gets.split.map(&:to_i)

puts P.sort_by { |n| n }.first(K).sum
