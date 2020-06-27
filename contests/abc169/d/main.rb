N = gets.to_i

require "prime"

count = 0
Prime.prime_division(N).each do |div|
  p, n = div
  pow = 1
  while (n -= pow) >= 0
    count += 1
    pow += 1
  end
end

puts count
