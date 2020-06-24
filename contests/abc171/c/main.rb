N = gets.to_i

alp = (0..25).map { |i| ("a".ord + i).chr }
name = ""
n = N

name = alp[n % 26 - 1]
n = (n - 1).div(26)

while n > 0
  name = alp[n % 26 - 1] + name
  n = (n - 1).div(26)
end
puts name
