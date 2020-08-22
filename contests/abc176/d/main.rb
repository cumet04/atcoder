H, W = gets.split.map(&:to_i)
Ch, Cw = gets.split.map(&:to_i)
Dh, Dw = gets.split.map(&:to_i)
S = H.times.map { gets.chomp.split("") }

# $stdout = File.open(File::NULL, "w")

$queue = {}
$ok = S

def check(h, w, dir)
  return true if h == Dh - 1 && w == Dw - 1
  $ok[h][w] = nil
  warp_map(h, w, dir).each do |nh, nw|
    if $ok[nh][nw] == "."
      $queue[[nh, nw]] = true
    end
  end
  $queue.delete([h, w])
  false
end

def walk(h, w, dir)
  return true if check(h, w, dir)
  if dir != "d" && road?(h - 1, w)
    return true if walk(h - 1, w, "u")
  end
  if dir != "u" && road?(h + 1, w)
    return true if walk(h + 1, w, "d")
  end
  if dir != "r" && road?(h, w - 1)
    return true if walk(h, w - 1, "l")
  end
  if dir != "l" && road?(h, w + 1)
    return true if walk(h, w + 1, "r")
  end
  false
end

def main
  ch = Ch - 1
  cw = Cw - 1

  jump = 0
  loop do
    return jump if walk(ch, cw, "")
    ch, cw = $queue.keys.first
    break if ch.nil?
    jump += 1
  end

  return -1
end

def road?(h, w)
  h >= 0 && w >= 0 && h < H && w < W && $ok[h][w] == "."
end

def warp_map(h, w, dir)
  list = case dir
    when "u"
      [
        [h - 2, w - 2],
        [h - 2, w - 1],
        [h - 2, w],
        [h - 2, w + 1],
        [h - 2, w + 2],
      ]
    when "d"
      [
        [h + 2, w - 2],
        [h + 2, w - 1],
        [h + 2, w],
        [h + 2, w + 1],
        [h + 2, w + 2],
      ]
    when "l"
      [
        [h - 2, w - 2],
        [h - 1, w - 2],
        [h, w - 2],
        [h + 1, w - 2],
        [h + 2, w - 2],
      ]
    when "u"
      [
        [h - 2, w + 2],
        [h - 1, w + 2],
        [h, w + 2],
        [h + 1, w + 2],
        [h + 2, w + 2],
      ]
    else
      [
        [h - 2, w - 2],
        [h - 2, w - 1],
        [h - 2, w],
        [h - 2, w + 1],
        [h - 2, w + 2],
        [h - 1, w - 2],
        [h - 1, w - 1],
        [h - 1, w + 1],
        [h - 1, w + 2],
        [h, w - 2],
        [h, w + 2],
        [h + 1, w - 2],
        [h + 1, w - 1],
        [h + 1, w + 1],
        [h + 1, w + 2],
        [h + 2, w - 2],
        [h + 2, w - 1],
        [h + 2, w],
        [h + 2, w + 1],
        [h + 2, w + 2],
      ]
    end
  list.reject { |x, y| x < 0 || y < 0 || x >= H || y >= W }
end

STDOUT.puts main

# AC11, WA5, TLE1
