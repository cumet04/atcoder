N = gets.chomp

# $stdout = File.open(File::NULL, "w")

def main
  return (N.split("").map(&:to_i).sum % 9 == 0) ? "Yes" : "No"
end

STDOUT.puts main
