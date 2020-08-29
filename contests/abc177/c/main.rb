N = gets.to_i
As = gets.split.map(&:to_i)

# $stdout = File.open(File::NULL, "w")
MOD = 10 ** 9 + 7

def main
  as = As.reverse
  base = as.shift
  result = 0
  loop do
    n = as.shift
    return result if n.nil?
    result += base * n
    result %= MOD
    base += n
  end
end

STDOUT.puts main
