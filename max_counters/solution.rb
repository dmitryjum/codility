require 'pry'

def solution(n, a)
  counters = Array.new(n, 0)
  last_max = 0
  a.each do |el|
    if el > n
      counters = Array.new(n, last_max)
    else
      counters[el - 1] += 1
      last_max = counters[el - 1] if counters[el - 1] > last_max
    end
  end
  counters
end

def solution2(n, a)
  counters = Array.new(n, 0)
  current_max = 0
  base = 0
  
  a.each do |operation|
    if operation.between?(1, n)
      index = operation - 1
      
      # Update counter if it hasn't been raised to the current base yet.
      counters[index] = [counters[index], base].max
      
      # Increase the counter.
      counters[index] += 1
      
      # Update current max.
      current_max = [current_max, counters[index]].max
    else
      # Instead of setting all counters, record the new base.
      base = current_max
    end
  end
  
  # Final pass to ensure all counters are at least the base.
  counters.map! { |counter| [counter, base].max }
  
  counters
end

puts solution(5, [3,4,4,6,1,4,4])