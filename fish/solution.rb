require 'pry'

def solution(a, b)
  downstream = []
  survivors = 0
  a.each_with_index do |fish, i|
    downstream << fish if b[i] == 1
    if b[i] == 0
      downstream.pop while downstream.size > 0 && downstream.last < fish #upstream fish eats the downstream fish
      survivors += 1 if downstream.empty? #fish is going upstream with no collision with downstream fish
    end
  end
  downstream.size + survivors
end

a = [4,3,2,1,5]
b = [0,1,0,0,0]
c = [4,3,2,1,5]
d = [0,1,0,1,0]
e = [0,1]
f = [1,1]
puts solution(c, d)
puts solution(e,f)
puts solution(a,b)