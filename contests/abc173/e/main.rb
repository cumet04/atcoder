N, K = gets.split.map(&:to_i)
AS = gets.split.map(&:to_i)

sorted = AS.sort_by(&:abs).reverse

nums = sorted.first(K)
neg = nums.select { |n| n < 0 }.count

if neg % 2 == 1 && N > K
  ok = false
  sorted[K..-1].each do |n|
    if n > 0
      K.times.each do |i|
        if nums[-i - 1] < 0
          nums[-i - 1] = n
          break
        end
      end
      ok = true
      break
    end
  end
  unless ok
    # 残りは全部マイナスの場合
    if neg == nums.count
      # そもそも全部マイナスの場合
      if sorted.any? { |n| n == 0 }
        puts "0"
        exit
      end
      nums = sorted.last(K)
    else
      # 元の選択に正がある場合
      if sorted[K] != 0
        K.times.each do |i|
          if nums[i] > 0
            nums[i] = sorted[K]
            break
          end
        end
      end
    end
  end
end

result = 1
mod = 10 ** 9 + 7
nums.each do |n|
  result = result * n % mod
end

puts result
