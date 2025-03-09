require 'pry'

def solution(a)
  min_avg = Float::INFINITY
  a_len = a.length
  min_index = 0

  (0...a_len - 1).each do |i|
    avg2 = (a[i] + a[i + 1]).to_f / 2

    if avg2 < min_avg
      min_avg = avg2
      min_index = i
    end

    if i < a_len - 2
      avg3 = (a[i] + a[i + 1] + a[i + 2]).to_f / 3

      if avg3 < min_avg
        min_avg = avg3
        min_index = i
      end
    end
  end
  min_index
end

puts solution([4,2,2,5,1,5,8])