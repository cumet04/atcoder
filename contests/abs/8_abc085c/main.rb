N, Y = gets.split.map(&:to_i)

if N * 1_000 > Y || N * 10_000 < Y
  puts "-1 -1 -1"
  exit
end

ma = [N, Y.div(10_000)].min
(0..ma).reverse_each do |a|
  next if a * 10_000 + (N - a) * 1_000 > Y

  mb = [N - a, Y.div(5_000)].min
  (0..mb).reverse_each do |b|
    c = N - a - b
    if a * 10_000 + b * 5_000 + c * 1_000 == Y
      puts "#{a} #{b} #{c}"
      exit
    end
  end
end
puts "-1 -1 -1"
