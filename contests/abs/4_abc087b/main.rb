A = gets.chomp.to_i
B = gets.chomp.to_i
C = gets.chomp.to_i
X = gets.chomp.to_i

# 枝刈り
MA = [A, X.div(500)].min
MB = [B, X.div(100)].min
MC = [C, X.div(50)].min

count = 0
(0..MA).each do |a|
  (0..MB).each do |b|
    (0..MC).each do |c|
      if a * 500 + b * 100 + c * 50 == X
        count = count + 1
      end
    end
  end
end
puts count
