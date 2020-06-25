N = gets.to_i
AS = gets.split.map(&:to_i)

as = AS.sort

max = as[-1]
bmap = as.to_h { |n| [n, true] }
bmap.default = false

as.each.with_index do |n, i|
  next unless bmap[n]

  v = n
  while (v += n) <= max
    bmap[v] = false
  end

  bmap[n] = false if as[i + 1] == n
end

puts bmap.values.select(&:itself).count
