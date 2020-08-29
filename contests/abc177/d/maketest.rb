max = 2 * (10 ** 5)

n = rand(2..max)
m = rand(0..max)
puts "#{n} #{m}"
m.times.each do
  a, b = loop do
    a = rand(1..n)
    b = rand(1..n)
    break a, b if a != b
  end
  puts "#{a} #{b}"
end
