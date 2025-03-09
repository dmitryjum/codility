require 'pry'

def solution(s, p, q) #O(n^2)
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

def solution2(s,p,q) #O(n + m)
  n = s.length
  m = p.length

  prefix_a = Array.new(n + 1, 0)
  prefix_c = Array.new(n + 1, 0)
  prefix_g = Array.new(n + 1, 0)
  prefix_t = Array.new(n + 1, 0)
  (0...n).each do |i|
    prefix_a[i + 1] = prefix_a[i]
    prefix_c[i + 1] = prefix_c[i]
    prefix_g[i + 1] = prefix_g[i]
    prefix_t[i + 1] = prefix_t[i]
    case s[i]
    when 'A'
      prefix_a[i + 1] += 1
    when 'C'
      prefix_c[i + 1] += 1
    when 'G'
      prefix_g[i + 1] += 1
    when 'T'
      prefix_t[i + 1] += 1      
    end
  end

  result = []
   # Process each query.
  # For query K, the range is from p[K] to q[K] inclusive.
  (0...m).each do |i|
    start_index = p[i]
    end_index = q[i] + 1  # +1 because our prefix arrays are 1-indexed relative to s.
    # Check in order of increasing impact factor.
    if prefix_a[end_index] - prefix_a[start_index] > 0
      result << 1  # There is at least one A in the range.
    elsif prefix_c[end_index] - prefix_c[start_index] > 0
      result << 2  # There is at least one C.
    elsif prefix_g[end_index] - prefix_g[start_index] > 0
      result << 3  # There is at least one G.
    else
      result << 4  # Otherwise, it must be T (since T is the only remaining nucleotide).
    end
  end

  result
end

s = "CAGCCTA"
first = [2,5,0]
second = [4,5,6]
# puts solution(s, first, second)

puts solution2(s, first, second)