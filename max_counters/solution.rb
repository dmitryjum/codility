require 'pry'

def solution(n, a)
  counters = Array.new(n, 0)
  last_max = 0
  a.each do |el|
    if el > n
      counters = Array.new(n, last_max)
    else
      counters[el - 1] += 1
      last_max = counters[el - 1] if counters[el - 1] > last_max
    end
  end
  counters
end

puts solution(5, [3,4,4,6,1,4,4])