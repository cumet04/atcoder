gets
AN = gets.split.map(&:to_i)

r = AN.inject { |result, n| result ^ n }
AN.each do |n|
  puts r ^ n
end
