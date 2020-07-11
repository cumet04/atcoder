N = gets.to_i
As = gets.split.map(&:to_i)

puts As.select.with_index(1) { |a, i| a % 2 == 1 && i % 2 == 1 }.count
