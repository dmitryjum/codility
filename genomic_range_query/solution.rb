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

def prefix_sums(a)
  n = a.length
  p = Array.new(n + 1, 0)
  (1..n).each do |i|
    p[i] = p[i - 1] + a[i - 1] # p[1] = 0 + 
  end
  p
end

def solution2(s,p,q)
end

s = "CAGCCTA"
first = [2,5,0]
second = [4,5,6]
puts solution(s, first, second)