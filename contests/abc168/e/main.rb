N = gets.to_i
ABS = N.times.map { gets.split.map(&:to_i) }

count = N * (N - 1) / 2

cross = {}

vecs = ABS.map do |ab|
  a, b = ab
  n = Math.sqrt(a ** 2 + b ** 2)
  an = a / n
  bn = b / n
  cross[-bn, ab] = [a, b]
end

# わからん
