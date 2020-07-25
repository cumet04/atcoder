gets
As = gets.split.map(&:to_i)

phase = :buy
money = 1000
kabu = 0
(As.length - 1).times.each do |i|
  now = As[i]
  nex = As[i + 1]
  if phase == :buy
    if nex > now
      phase = :sell
      count = money.div(now)
      money -= count * now
      kabu += count
      # puts "buy #{now} * #{count} -> #{kabu}, #{money}"
    end
  elsif phase == :sell
    if nex < now
      phase = :buy
      count = kabu
      money += count * now
      kabu -= count
      # puts "sell #{now} * #{count} -> #{kabu}, #{money}"
    end
  end
end

now = As.last
count = kabu
money += count * now
kabu -= count
# puts "sell #{now} * #{count} -> #{kabu}, #{money}"

puts money
