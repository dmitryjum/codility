require 'pry'

def solution(a)
  diffs = []
  last_ind = a.length - 1
  a.each_with_index do |el, id|
    next_idx = id == last_ind ? id : id + 1
    diffs << (a[0..id].reduce(:+) - a[next_idx..last_ind].reduce(:+)).abs
  end
  diffs.min
end

def solution2(a)
  total = a.sum
  min_diff = Float::INFINITY
  left_sum = 0
  
  # Iterate only until the second to last element
  a[0...-1].each do |num|
    left_sum += num
    diff = (left_sum - (total - left_sum)).abs
    min_diff = diff if diff < min_diff
  end
  
  min_diff
end

puts solution([3,1,2,4,3])
puts solution2([3,1,2,4,3])