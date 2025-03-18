require 'pry'

def solution(a, b)
  fish_stack = [[a.first, b.first]]
  (0...a.length - 2).each do |i|
    if fish_stack.last.last > b[i + 1]
      if fish_stack.last.first < a[i + 1]
        fish_stack.pop
        # call the solving function again recursively here
        # get rid of the loop and recursively solve this
        fish_stack << [a[i + 1], b[i + 1]]
      else
        a.delete_at(i + 1)
        b.delete_at(i + 1)
      end
    else
      fish_stack << [a[i + 1], b[i + 1]]
    end
  end
  fish_stack.length
end

a = [4,3,2,1,5]
b = [0,1,0,0,0]
c = [4,3,2,1,5]
d = [0,1,0,1,0] # 4 3 5
puts solution(a, b)