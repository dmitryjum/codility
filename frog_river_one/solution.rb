require 'pry'

def solution(x, a)
  seen = Array.new(x + 1, false)
  count = 0
  a.each_with_index do |stone, time|
    if !seen[stone] && count <= x
      seen[stone] = true
      count += 1
      return time if count == x
    end
  end
  -1
end

puts solution(5, [1,3,1,4,2,3,5,4])
puts solution(2, [2, 2, 2, 2, 2])