gets
AS = gets.split.map(&:to_i)

if AS.any? { |n| n == 0 }
  puts "0"
  exit
end

result = 1
AS.each do |n|
  result *= n
  if result > (10 ** 18)
    puts "-1"
    exit
  end
end
puts result
