require 'pry'

def solution(a)
  first_car = a.first
  direction = 1
  pairs = 0
  a[1..a.length-1].each do |n|
    if first_car == n
      direction += 1
    else
      pairs += direction
    end
  end
  pairs > 1000000000 ? -1 : pairs
end

puts solution([0,1,0,1,1]) #5
puts solution([1,1,1,1]) #0
puts solution([0,0,1,1,0,1,1,1]) #1111111111111