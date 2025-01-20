require 'pry'

# def solution(a)
#   biggest_poluters = a.sort.reverse
#   half_polution = a.sum / 2
#   improved_polution = 0
#   biggest_poluters.each do |f|
    
#   end
# end

def solution(a)
  half_polution = a.sum / 2
  total_polution = a.sum
  total_filters = 0
  while total_polution > half_polution
    highest_polutant = a.index(a.max)
    a[highest_polutant] = a.max.to_f / 2
    total_polution = a.sum
    total_filters += 1
  end
  total_filters
end



puts solution([3, 5, 6, 1, 18])

# By the time I worked on this problem, I was running out of time. My thought process was: I need to cycle through the array and split the biggest polluters in half,
# adding a filter to the total filter count every time. I would compare the total pollution to half of the original total. When the total pollution reaches or drops below half,
# that would be sufficient. But then I ran out of time.
# 
# Looking at this problem today, I realize I need to iterate over the array of factories as many times as there are filters actually required.
# To achieve this, a `while` loop would be the best approach. I start with the total pollution, and while it’s greater than half the pollution, I divide the highest
# polluter by 2 in each cycle. 
# 
# The most performant way would be to convert the array into a max heap, because a heap gives access to the highest value in O(log n) time complexity.
# I’d pop the highest element from the heap, divide it by 2, and push it back into the heap. I’d also deduct the pollution reduced in the current cycle
# from the current total pollution. This process would continue until the total pollution falls below the target half.
# 
# The issue with this solution is: there’s no built-in Heap data structure in Ruby. Constructing a fully functional heap with all the required methods would take time,
# and I most likely wouldn’t have completed all the exercises in time. A heap isn’t an easy data structure to manually build without debugging, unless I remember it by heart.
# 
# I could potentially find a gem, but I’m not sure if I could install or `require` a gem in the Codility interface. So I solved it in a less performant way right now:
# I ran a `while` loop comparing the total pollution to half the pollution in each cycle. I used the `#max` method to get the index of the highest polluter in the array.
# I replaced the highest polluter’s value in the array (accessing it by the found index) with half of the old value. Then I refreshed the total pollution sum,
# added one filter to the count, and repeated the cycle until the total pollution dropped below half the pollution.
# 
# This solution is slower than the heap-based one, but it’s something I could solve within the given time constraints. If I had to implement this in a production
# Ruby or Rails application for maximum performance, I’d find a reliable heap class gem. I wouldn’t build a custom heap in a production application, since problems
# like this are already solved and tested. I’d simply choose the most popular and proven existing solution.