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

# I used my own editor and the "pry" gem to debug it.
# At first, I thought of splitting the message by spaces with '#split(" ")', but that returns an array without spaces at all.
# I thought that was fine; I planned to loop over the message string and push each word into the result string, separated by a space,
# and slice it at its 13th index, inclusive. But when I reviewed the problem description, the first incorrect example, "Codility We te,"
# showed exactly the issue I'd encounter.
# That reminded me of a problem I solved before while practicing: "Find binary gap: a gap of zeros between 1s in a binary value."
# In that case, I split using the /()/ regex, which preserved the values I set in the pattern. In this case, I used a space because it helps
# me distinguish word boundaries.
# I then decided to loop over the array of the split message, pushing each element into the result string if the following conditions were met:
# If the result's length is still less than k, I either push the next element or break out of the loop and return the result. Based on the requirements,
# it's more important to return a truncated message with fewer than 14 characters that ends on a complete word rather than a broken one.
# The conditions I check are: if the current element in the cycle is " " AND if appending that space (" ") and the next word in the split message
# to the result string would make the result string longer than k, then we don't append the current space and stop at the current result,
# breaking out of the loop. Otherwise, we append it and keep going.
# I used the "unless" condition to avoid negating the logic with "!", as it felt more readable to me when I wrote it.

