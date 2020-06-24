points = gets.chomp.to_i.times.map { gets.split.map(&:to_i) }

p = [0, 0, 0]
(0..points.count - 1).each do |i|
  n = points[i]
  dist = (p[1] - n[1]).abs + (p[2] - n[2]).abs
  time = n[0] - p[0]

  # puts p.to_s
  # puts n.to_s
  # puts dist, time

  if dist > time
    puts "No"
    exit
  end
  if (time - dist) % 2 == 1
    puts "No"
    exit
  end

  p = n
end
puts "Yes"
