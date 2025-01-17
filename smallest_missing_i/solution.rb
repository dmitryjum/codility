require 'pry'

# def solution(a)
#   sorted = a.sort.uniq
#   result = 1
#   sorted.each_with_index do |el, i|
#     if el > 0 && el + 1 != sorted[i + 1]
#       result = el + 1
#       break;
#     end
#   end
#   result
# end


def solution(a)
  positives = a.select { |x| x > 0 }.to_set
  i = 1
  while positives.include?(i)
    i += 1
  end
  i
end
puts solution([1, 3, 6, 4, 1, 2])