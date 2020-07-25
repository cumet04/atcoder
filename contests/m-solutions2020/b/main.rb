A, B, C = gets.split.map(&:to_i)
K = gets.to_i

def judge(a, b, c)
  if a < b && b < c
    puts "Yes"
    exit
  end
end

def run(k, a, b, c)
  return if k == 0

  judge(a * 2, b, c)
  run(k - 1, a * 2, b, c)

  judge(a, b * 2, c)
  run(k - 1, a, b * 2, c)

  judge(a, b, c * 2)
  run(k - 1, a, b, c * 2)
end

run(K, A, B, C)
puts "No"
