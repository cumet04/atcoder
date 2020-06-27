N = gets.to_i
ABS = N.times.map { gets.split.map(&:to_i) }

as = []
bs = []
ABS.each do |ab|
  a, b = ab
  as.push(a)
  bs.push(b)
end

def m(arr)
  sorted = arr.sort
  if arr.count % 2 == 1
    sorted[(arr.count + 1) / 2 - 1]
  else
    (sorted[arr.count / 2 - 1] + sorted[arr.count / 2 + 1 - 1]) / 2.0
  end
end

am = m(as)
bm = m(bs)

if N % 2 == 1
  puts (bm - am + 1).round
else
  puts ((bm - am) * 2 + 1).round
end
