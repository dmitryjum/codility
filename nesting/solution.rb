require 'pry'

def solution(s)
  return 1 if s.empty?
  stack = []
  brackets = {"(" => ")"}
  s.split("").each do |br|
    brackets[stack.last] == br ? stack.pop : stack << br 
  end
  stack.empty? ? 1 : 0
end

puts solution("(()(())())")
puts solution("())")