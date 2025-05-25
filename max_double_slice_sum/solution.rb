require 'pry'

def solution(a)
  maxLeft = Array.new(a.length, 0)
  maxRight = Array.new(a.length, 0)
  
  (1...a.length - 1).each do |i|
    maxLeft[i] = [0, maxLeft[i - 1] + a[i]].max
  end

  (a.length - 2).downto(1) do |i|
    maxRight[i] = [0, maxRight[i + 1] + a[i]].max
  end

  max_double_slice = 0
  (1...a.length - 1).each do |i|
    max_double_slice = [max_double_slice, maxLeft[i - 1] + maxRight[i + 1]].max
  end
  
  max_double_slice
end

puts solution([3, 2, 6, -1, 4, 5, -1, 2]) # Expected output: 17
