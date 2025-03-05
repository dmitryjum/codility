require 'pry'

def solution(a)
  if a.index(1).nil?
    1
  else
    missing_min = Float::INFINITY
    a.each do |el|
        missing_min = el + 1 if a.index(el + 1).nil? && el + 1 < missing_min
    end
    missing_min > 0 ? missing_min : 1
  end
end

# puts solution([1,3,6,4,1,2]) #5
# puts solution([1,2,3]) #4
# puts solution([4,5,6]) #1
# puts solution([-1,-3]) #1

def solution2(a)
  n = a.length
  present = Array.new(n + 2, false)
  a.each do |x|
    if x > 0 && x <= n + 1
      present[x] = true
    end
  end

  (1..n+1).each do |i|
    return i unless present[i]
  end
end

puts solution2([1,3,6,4,1,2]) #5
puts solution2([1,2,3]) #4
puts solution2([4,5,6]) #1
puts solution2([-1,-3]) #1
puts solution2([1,2,1,1,1,])
puts solution2([2,2,2,2])