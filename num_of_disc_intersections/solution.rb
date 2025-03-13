require 'pry'

def solution(a)
  intersections = 0
  starts = []
  ends = []
  a.each_with_index do |radius, center|
    [center - radius, center + radius]
    starts << center - radius
    ends << center + radius
  end
  starts.sort!
  ends.sort!

  j = 0 #pointer for the ends array
  (0...a.length).each do |i|
    # Move the pointer forward while the current disc's start is greater than
    # the end of discs that have already finished.
    while j < a.length && ends[j] < starts[i]
      j += 1
    end
    # The number of discs that have started so far is i.
    # The number of discs that have already ended is j.
    # Therefore, the number of discs overlapping with the current one is (i - j).
    intersections += (i - j)
    return -1 if intersections > 10_000_000
  end
  intersections
end

puts solution([1,5,2,1,4,0])