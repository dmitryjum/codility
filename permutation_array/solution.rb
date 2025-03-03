require 'pry'

def solution(a)
  arr_len = a.length
  seen = Array.new(arr_len + 1, false)
  count = 0
  a.each do |el|
    return 0 if seen[el].nil?
    if !seen[el] && count <= arr_len
      seen[el] = true
      count += 1
    end
  end
  count == arr_len ? 1 : 0
end

puts solution([4,1,3,2])
puts solution([4,1,3])
puts solution([4,4,1,2,3])