H, W, K = gets.split.map(&:to_i)
CIJS = H.times.map { gets.chomp }

count = 0

(2 ** H - 1).times.each do |h|
  hs = sprintf("%0#{H}b", h)
  (2 ** W - 1).times.each do |w|
    ws = sprintf("%0#{W}b", w)
    k = 0
    CIJS.each.with_index do |line, i|
      next if hs[i] == "1"
      line.length.times.each do |j|
        next if ws[j] == "1"
        k += 1 if line[j] == "#"
      end
    end
    if k == K
      count += 1
    end
  end
end

puts count
