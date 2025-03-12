require 'pry'

def solution(a)
  sorted = a.sort
  sorted[0...sorted.length-2].each_with_index do |n, i|
    if (sorted[i] + sorted[i+1]) > sorted[i+2]
      puts "triangle: (#{sorted[i]}, #{sorted[i+1]}, #{sorted[i+2]})"
      return 1
    end
  end
  0
end

puts solution([10,1,2,8,5,20])
puts solution([10,50,5,1])