S = gets
T = gets

count = 0
(S.length - 1).times.each do |i|
  if S[i] != T[i]
    count += 1
  end
end
puts count
