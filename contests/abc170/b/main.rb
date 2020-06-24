X, Y = gets.split.map(&:to_i)

(X + 1).times.each do |t|
  k = X - t
  if (t * 2 + k * 4) == Y
    puts "Yes"
    exit
  end
end
puts "No"
