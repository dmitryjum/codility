require 'pry'

def solution(a, b, k)
  counter = 0
  (a..b).each do |i|
    counter+= 1 if i % k == 0
  end
  counter
end

solution(6, 11, 2)

# much faster
def solution(a, b, k)
  # Number of multiples up to B
  count_b = b / k

  # Number of multiples before A
  # When A = 0, you can handle it as a special case, or define:
  # (a - 1) / k = -1 for a=0
  count_a_minus_1 = (a - 1) < 0 ? -1 : (a - 1) / k
  
  count_b - count_a_minus_1
end