N = gets.to_i
As = gets.split.map(&:to_i)

# $stdout = File.open(File::NULL, "w")

def main
  max = 0
  sum = 0
  As.each do |a|
    if a > max
      max = a
    else
      sum += max - a
    end
  end
  return sum
end

STDOUT.puts main
