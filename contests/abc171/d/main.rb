N = gets.to_i
AN = gets.split.map(&:to_i)
BC = gets.chomp.to_i.times.map { gets.split.map(&:to_i) }

require "set"

changes = Set.new(BC.map { |bc| bc[0] })
sums = [0] * BC.length

others = (AN - changes.to_a)
osum = others.sum
an = AN - others
BC.each do |bc|
  b, c = bc
  an = an.map { |n| n == b ? c : n }
  puts osum + an.sum
end

# TLE
