N = gets.to_i

# $stdout = File.open(File::NULL, "w")

def main
  max = 10 ** 9 + 7
  all = 1
  zero = 1
  nine = 1
  zn = 1
  N.times.each do
    all = all * 10 % max
    zero = zero * 9 % max
    nine = nine * 9 % max
    zn = zn * 8 % max
  end
  return (all - zero - nine + zn) % max
end

STDOUT.puts main
