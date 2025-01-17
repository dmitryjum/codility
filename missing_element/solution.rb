require 'pry'

def solution(a)
  sorted = a.sort
  result = 0
  sorted.each_with_index do |el, i|
    unless sorted[i + 1] == (el + 1)
      result = el + 1
      break;
    end
  end
  puts result
  return result
end

solution([2,3,1,5])


# ▶empty_and_single
# empty list and single element✘RUNTIME ERROR
# tested program terminated with exit code 1
# ▶missing_first_or_last
# the first or the last element is missing✘WRONG ANSWER
# got 7 expected 1
# ▶single
# single element✘WRONG ANSWER
# got 3 expected 1
# ▶double
# two elements✘WRONG ANSWER
# got 4 expected 1
# ▶simple
# simple test✔OK