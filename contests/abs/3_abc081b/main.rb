gets
nums = gets.split.map(&:to_i)

count = 0
loop do
  if nums.all? { |n| n % 2 == 0 }
    nums = nums.map { |n| n / 2 }
    count = count + 1
  else
    break
  end
end
puts count
