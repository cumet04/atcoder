require "set"

N, M = gets.split.map(&:to_i)

hs = gets.split.map(&:to_i).map.with_index(1) { |h, i| [h, i] }
$routes = Set.new
M.times.each {
  $routes.add(gets.split.map(&:to_i))
}

puts hs.to_s
puts $routes

$ok = {}
$ok.default = true
count = 0

def delete(i)
  $routes.each do |set|
    if set.member?(i)
      $routes.delete(set)
      j = set.tap { |s| s.delete(i) }[0]
      delete(j)
      $ok[j] = false
    end
  end
end

hs.sort_by { |h, i| h }.reverse.each do |h, i|
  if $ok[i]
    count += 1
  end
  delete(i)
end

puts count

# わからん
