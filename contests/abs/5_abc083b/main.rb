N, A, B = gets.split.map(&:to_i)

puts (0..N).select { |n|
  sum = n.to_s.split("").map(&:to_i).sum
  sum >= A && sum <= B
}.sum
