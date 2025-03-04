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

puts solution([1,3,6,4,1,2])
puts solution([1,2,3])
puts solution([4,5,6])
puts solution([-1,-3])