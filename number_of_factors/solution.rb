require 'pry'

def solution(n)
  factor_count = 0
  factor = 1
  while factor * factor <= n do
    if n % factor == 0
      factor * factor == n ? factor_count += 1 : factor_count += 2
    end
    factor += 1
  end
  factor_count
end

puts solution(24) #8