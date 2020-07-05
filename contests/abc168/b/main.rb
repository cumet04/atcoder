K = gets.to_i
S = gets.chomp

puts S.length <= K ? S : "#{S[0...K]}..."
