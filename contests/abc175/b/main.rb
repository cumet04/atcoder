require "set"

N = gets.to_i
Ls = gets.split.map(&:to_i)

def tri?(a, b, c)
  a + b > c && b + c > a && c + a > b
end

count = 0

(0..Ls.length - 3).each do |i|
  a = Ls[i]
  (i + 1..Ls.length - 2).each do |j|
    b = Ls[j]
    (j + 1..Ls.length - 1).each do |k|
      c = Ls[k]
      if tri?(a, b, c) && a != b && b != c && c != a
        # puts "#{i + 1}, #{j + 1}, #{k + 1}"
        count += 1
      end
    end
  end
end

puts count
