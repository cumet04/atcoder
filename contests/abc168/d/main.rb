N, M = gets.split.map(&:to_i)
ABS = M.times.map { gets.split.map(&:to_i) }

routes = {} # room: [rooms...]

ABS.each do |ab|
  a, b = ab
  routes[a] = (routes[a] || []).push(b)
  routes[b] = (routes[b] || []).push(a)
end

results = { 1 => [nil, 0] } # room: [label, cost]
results.default = nil

if routes[1].length == 0
  puts "No"
  exit
end

queue = [] + routes[1]
i = 0
loop do
  room = queue[i]
  break unless room
  if results.has_key?(room)
    i += 1
    next
  end
  # puts "room #{room}"

  label = nil
  cost = N + 1
  routes[room].each do |r|
    # puts "#{r}, #{results[r]}"
    if !results.has_key?(r)
      queue.push(r)
    elsif results[r][1] < cost
      label = r
      cost = results[r][1] + 1
    end
  end
  results[room] = [label, cost]
  i += 1
end

puts "Yes"
results.delete(1)
results.keys.sort.each do |k|
  puts results[k][0]
end
