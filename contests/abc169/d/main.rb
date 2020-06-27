N = gets.to_i

require "prime"

LIMIT = 10 ** 6

zmap1 = {}
zmap2 = {}
Prime.each(LIMIT) do |p|
  zmap1[p] = true
  e = 2
  while (z = p ** e) < LIMIT
    zmap2[z] = true
    e += 1
  end
end

zs1 = zmap1.keys.sort.reverse
zs2 = zmap2.keys.sort

n = N
count = 0

(zs1 + zs2).each do |z|
  if n > LIMIT && Prime.prime?(n)
    count += 1
    break
  end

  if n % z == 0
    count += 1
    n = n.div(z)
  end
end

puts count
