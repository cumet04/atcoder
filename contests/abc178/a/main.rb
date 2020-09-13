X = gets.to_i

# $stdout = File.open(File::NULL, "w")

def main
  return (X + 1) % 2
end

STDOUT.puts main
