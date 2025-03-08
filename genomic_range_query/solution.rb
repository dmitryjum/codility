require 'pry'

def solution(s, p, q)
  impact_factors = {
    "A": 1,
    "C": 2,
    "G": 3,
    "T": 4
  }

  result = []

  p.each_with_index do |num, idx|
    smallest = Float::INFINITY
    (num..q[idx]).each do |i|
      smallest = impact_factors[s[i].to_sym] if impact_factors[s[i].to_sym] < smallest
    end
    result << smallest
  end
  result
end

s = "CAGCCTA"
first = [2,5,0]
second = [4,5,6]
puts solution(s, first, second)