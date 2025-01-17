require 'pry'

def solution(message, k)
  result = ""
  split_message = message.split(/( )/)
  split_message.each_with_index do |m, i|
    if result.length < k
      unless m == " " && "#{result}#{m}#{split_message[i+1]}".length > k
        result << m
      else
        break;
      end
    end
  end
  result
end

puts solution("Codility We test coders", 14)
puts solution("Why not", 100)
puts solution("The quick brown fox jumps over the lazy dog", 39)
puts solution("To crop or not to crop", 21)