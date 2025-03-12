require 'pry'

def solution(a)
  a_len = a.length
  max_product = 0
  (0...a_len-2).each do |i|
    (i+1...a_len-1).each do |j|
      (j+1...a_len).each do |k|
        product =  a[i] * a[j] * a[k]
        max_product = product if product > max_product
      end
    end
  end
  max_product
end

def solution2(a)
  max1 = -Float::INFINITY
  max2 = -Float::INFINITY
  max3 = -Float::INFINITY

  min1 = Float::INFINITY
  min2 = Float::INFINITY

  a.each_with_index do |num, i|
    if num > max1
      max3 = max2
      max2 = max1
      max1 = num
    elsif num > max2
      max3 = max2
      max2 = num
    else
      max3 = num
    end

    if num < min1
      min2 = min1
      min1 = num
    elsif num < min2
      min2 = num
    end
  end
  [max1 * max2 * max3, max1 * min1 * min2].max
end

puts solution2([-3,1,2,-2,5,6])