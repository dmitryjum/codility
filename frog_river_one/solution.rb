require 'pry'

def solution(x, a)
  result = a.index(x)
  result = result.nil? ? -1 : result
end

puts solution(2, [2, 2, 2, 2, 2])