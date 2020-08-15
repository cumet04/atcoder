N, K = gets.split.map(&:to_i)
As = K.times.map { |i|
  gets
  gets.split.map(&:to_i)
}

has = {}
As.each do |as|
  as.each do |a|
    has[a] = true
  end
end

puts N - has.keys.count
