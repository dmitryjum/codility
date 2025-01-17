require 'pry'

def solution(p, s)
  biggest_cars = s.sort.reverse
  total_people = p.sum
  seats_used = 0
  cars_used = 0
  biggest_cars.each do |capacity|
    seats_used += capacity
    cars_used += 1
    puts cars_used
  end
end

puts solution([1,4,1], [1,5,1])
puts solution([4,4,2,4], [5,5,2,5])
puts solution([2,3,4,2], [2,5,7,2])