require 'pry'

def solution(n)
  factor = 1
  min_perimeter = Float::INFINITY
  while factor * factor <= n do
    if n % factor == 0
      perimeter = 2 * (n / factor + factor)
      min_perimeter = perimeter if perimeter < min_perimeter
    end
    factor += 1
  end
  min_perimeter
end

puts solution(30) # 22