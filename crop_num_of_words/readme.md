There is a forum that has a limit of K characters per entry. In this task your job is to implement an algorithm for crompping messages that aare too ong. You're given a message, consisting of English alphabet letters and spaces,
that might be longer than the limit. Your algorithm should crop a number of words from the end of the message, keeping in mind that:
* it may not crop awway part of a word;
* the output message may not end with a space;
* the output message may not exceed the K-character limit;
* the output message should be as long as possible.

This means that, in some cases, the algorithm may need to crop away the entire message, outputting an empty string.

For example, given the text: "codility We test coders"

With K = 14 the algorithm should output:

"Codility We"

Not that: the output "Codility We te" would be incorrect, because the original message is cropped through the middle of a word;
the output "Codility We " would be incorrect, because it endds with a space;
the output "Codility We test coders" would be incorre t, because it exceeds the K-character limit;
the output "Codlitiy" wouuld be incorrect, because it is shorter than the correct output.

Wirte 

# By the time I worked on this problem, I was running out of time. My thought process was: I need to cycle through the array and split the biggest polluters in half,
# adding a filter to the total filter count every time. I would compare the total pollution to half of the original total. When the total pollution reaches or drops below half,
# that would be sufficient. But then I ran out of time.
# 
# Looking at this problem today, I realize I need to iterate over the array of factories as many times as there are filters actually required.
# To achieve this, a `while` loop would be the best approach. I start with the total pollution, and while it’s greater than half the pollution, I divide the highest
# polluter by 2 in each cycle. 
# 
# The most performant way would be to convert the array into a max heap, because a heap gives access to the highest value in O(log n) time complexity.
# I’d pop the highest element from the heap, divide it by 2, and push it back into the heap. I’d also deduct the pollution reduced in the current cycle
# from the current total pollution. This process would continue until the total pollution falls below the target half.
# 
# The issue with this solution is: there’s no built-in Heap data structure in Ruby. Constructing a fully functional heap with all the required methods would take time,
# and I definitely wouldn’t have completed all the exercises in time. A heap isn’t an easy data structure to manually build without debugging, unless I remember it by heart.
# 
# I could potentially find a gem, but I’m not sure if I could install or `require` a gem in the Codility interface. So I solved it in a less performant way:
# I ran a `while` loop comparing the total pollution to half the pollution in each cycle. I used the `#max` method to get the index of the highest polluter in the array.
# I replaced the highest polluter’s value in the array (accessing it by the found index) with half of the old value. Then I refreshed the total pollution sum,
# added one filter to the count, and repeated the cycle until the total pollution dropped below half the pollution.
# 
# This solution is much slower than the heap-based one, but it’s something I could solve within the given time constraints. If I had to implement this in a production
# Ruby or Rails application for maximum performance, I’d find a reliable heap class gem. I wouldn’t build a custom heap in a production application, since problems
# like this are already solved and tested. I’d simply choose the most popular and proven existing solution.
