require "set"
nums = gets.chomp.to_i.times.map { gets.chomp.to_i }

puts Set.new(nums).count
