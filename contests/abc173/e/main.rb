N, K = gets.split.map(&:to_i)
AS = gets.split.map(&:to_i)

def nums
  sorted = AS.sort_by(&:abs).reverse

  nums = sorted.first(K)
  neg = nums.select { |n| n < 0 }.count

  return nums unless neg % 2 == 1 && N > K
  sorted[K..-1].each do |n|
    if n > 0
      K.times.each do |i|
        if nums[-i - 1] < 0
          nums[-i - 1] = n
          break
        end
      end
      return nums
    end
  end

  # 残りは全部マイナスの場合
  if neg == nums.count
    # そもそも全部マイナスの場合
    if sorted.any? { |n| n == 0 }
      puts "0"
      exit
    end
    return sorted.last(K)
  else
    # 元の選択に正がある場合
    if sorted[K] != 0
      K.times.each do |i|
        if nums[i] > 0
          nums[i] = sorted[K]
          return nums
        end
      end
    end
  end
  return nums
end

result = 1
mod = 10 ** 9 + 7
nums.each do |n|
  result = result * n % mod
end

puts result
