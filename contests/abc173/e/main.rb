N, K = gets.split.map(&:to_i)
AS = gets.split.map(&:to_i)

def nums
  return AS if N == K

  sorted = AS.sort_by(&:abs).reverse

  return sorted.last(K) if AS.all? { |n| n < 0 } && K % 2 == 1

  nums = sorted.first(K)

  return nums unless nums.select { |n| n < 0 }.count % 2 == 1

  posplus = begin
      plus = sorted[K..-1].find { |n| n > 0 } || 0
      swap = nums.reverse.find { |n| n < 0 } || 0
      [plus, swap]
    end

  negplus = begin
      plus = sorted[K..-1].find { |n| n < 0 } || 0
      swap = nums.reverse.find { |n| n > 0 } || 0
      [plus, swap]
    end

  swaps = if (posplus[0] * posplus[1]).abs >= (negplus[0] * negplus[1]).abs
      posplus
    else
      negplus
    end
  nums.length.times.each do |i|
    if nums[i] == swaps[1]
      nums[i] = swaps[0]
      break
    end
  end
  nums
end

result = 1
mod = 10 ** 9 + 7
nums.each do |n|
  result = result * n % mod
end

puts result
