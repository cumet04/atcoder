S = gets.chomp
T = gets.chomp

# $stdout = File.open(File::NULL, "w")

def main
  t = S.length - T.length + 1
  min = S.length
  t.times.each do |s|
    count = 0
    T.chars.each.with_index do |c, i|
      if S[s + i] != c
        count += 1
      end
    end
    if count < min
      min = count
    end
  end
  return min
end

STDOUT.puts main
