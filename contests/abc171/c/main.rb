N = gets.to_i

alp = (0..25).map { |i| ("a".ord + i).chr }
name = ""
n = N

while n > 0
  n = n - 1
  name = alp[n % 26] + name
  n = n.div(26)
end
puts name
