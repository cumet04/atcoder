N, X, T = gets.split.map(&:to_i)

# $stdout = File.open(File::NULL, "w")

def main
  return (1.0 * N / X).ceil * T
end

STDOUT.puts main
