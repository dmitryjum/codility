require 'pry'

def solution(s)
  return 1 if s.empty?
  stack = []
  brackets = {
    "{" => "}",
    "(" => ")",
    "[" => "]"
  }
  s.split("").each {|br| brackets[stack.last] != br ? stack << br : stack.pop }
  stack.empty? ? 1 : 0
end

puts solution("{[()()]}")
puts solution("([)()])")
puts solution(")[(")