gets
AN = gets.split.map(&:to_i)

r = AN.inject { |result, n| result ^ n }
puts AN.map { |n|
  r ^ n
}.map(&:to_s).join(" ")
