gets
nums = gets.split.map(&:to_i).sort_by { |n| n }

a = 0
b = 0
while nums.count > 0
  a = a + nums.pop
  b = b + (nums.pop || 0)
end
puts a - b
