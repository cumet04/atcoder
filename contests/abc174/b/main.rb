N, D = gets.split.map(&:to_i)
XYs = N.times.map { gets.split.map(&:to_i) }

dd = D ** 2
puts XYs.select { |xy|
  xy[0] ** 2 + xy[1] ** 2 <= dd
}.count
