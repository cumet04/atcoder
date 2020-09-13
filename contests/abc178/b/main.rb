A, B, C, D = gets.split.map(&:to_i)

# $stdout = File.open(File::NULL, "w")

def main
  return [A * C,
          A * D,
          B * C,
          B * D].max
end

STDOUT.puts main
