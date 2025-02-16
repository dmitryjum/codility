require 'pry'

def solution1(a)
  new_arr = []
  a.each do |el|
    copy = new_arr.index(el)
    copy.nil? ? new_arr << el : new_arr.delete_at(copy)
  end
  new_arr.first
end

def solution2(a)
  a.reduce(0, :^)
end

test_input = [9,3,9,3,9,7,9]

puts solution1(test_input) # expect to return 7
puts solution2(test_input) # expect to return 7