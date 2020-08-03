K = gets.to_i

n = 0
# 例3がありうる最大っぽいので999982超えてたらきっと大丈夫
1_000_000.times.each do |i|
  n = n * 10 + 7
  if n % K == 0
    puts i + 1
    exit
  end
  n = n % K
end

puts -1
