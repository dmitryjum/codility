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