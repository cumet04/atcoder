S = gets.chomp
s = S

loop do
  if s[0..5] == "eraser"
    s = s[6..-1]
    next
  end
  if s[0..4] == "erase"
    s = s[5..-1]
    next
  end
  if s[0..6] == "dreamer"
    if s[5..9] == "erase"
      s = s[5..-1]
    else
      s = s[7..-1]
    end
    next
  elsif s[0..4] == "dream"
    s = s[5..-1]
    next
  end

  puts s.length == 0 ? "YES" : "NO"
  exit
end
