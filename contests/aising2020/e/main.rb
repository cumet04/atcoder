T = gets.to_i

T.times.each do
  n = gets.to_i
  lines = n.times.map { gets.split.map(&:to_i) }
  sorted = lines.sort_by { |line| -(line[1] - line[2]).abs }
  puts sorted.map(&:to_s)

  sum = 0
  order = [nil] * n
  rest = []
  sorted.each.with_index do |line, i|
    k = line[0]
    puts "k: #{k}"
    if line[1] > line[2]
      index = (0...k).to_a.reverse.detect { |i| order[i].nil? }
      puts "index1: #{index}"
      if index
        order[index] = i
        sum += line[1]
      else
        rest.push(i)
      end
    else
      index = (k...n).detect { |i| order[i].nil? }
      puts "index2: #{index}"
      if index
        order[index] = true
        sum += line[1]
      else
        rest.push(i)
      end
    end
  end
  rest.each do |i|
    sum += [sorted[i][1], sorted[i][2]].min
  end

  puts order.to_s
  puts sum
end

# 全然わからん
