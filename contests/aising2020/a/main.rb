L, R, d = gets.split.map(&:to_i)

puts (L..R).map { |n| n % d == 0 ? 1 : 0 }.sum
