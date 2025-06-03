require 'pry'

def solution(k, m, a)
  low = a.max
  high = a.sum
  result = high

  while low <= high
    mid = (low + high) /2
    if feasable?(a, k, mid)
      result = mid
      high = mid - 1
    else
      low = mid + 1
    end
  end

  return result
end

def feasable?(array, k, limit)
  blocks = 1
  sum = 0
  array.each do |v|
    if sum + v > limit
      blocks += 1
      sum = v
      return false if blocks > k
    else
      sum += v
    end
  end
  true
end

puts solution(3, 5, [2,1,5,1,2,2,2])