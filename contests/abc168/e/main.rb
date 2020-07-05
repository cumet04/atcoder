N = gets.to_i
ABS = N.times.map { gets.split.map(&:to_i) }

count = N * (N - 1) / 2

cross = {}
cross.default = 0

ABS.each do |ab|
  a, b = ab
  if b == 0
    cross[[0, 1]] += 1
    next
  end
  gcd = a.gcd(b)
  if b > 0
    cross[[a / gcd, b / gcd]] += 1
  else
    cross[[-1 * (a / gcd), -1 * (b / gcd)]] += 1
  end
end

count = 0
cross.each do |k, v|
  count += 1 if v == 1
end

puts count * (count - 1) / 2
