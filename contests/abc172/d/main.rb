N = gets.to_i

require "prime"

puts (1..N).map { |k|
  f = Prime.prime_division(k).map { |nn| nn[1] + 1 }.inject(1) { |n, s| s *= n }
  f = 1 if f == 0
  k * f
}.sum
