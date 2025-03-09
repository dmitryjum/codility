require 'pry'

def solution(a)
  seen = {}
  uniq_count = 0
  a.each do |n|
    uniq_count += 1 if !seen[n]
    seen[n] = true
  end
  uniq_count
end

def solution(a)
  a.uniq.size
end

puts solution([2,1,1,2,3,1])