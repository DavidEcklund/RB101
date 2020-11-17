# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.
# Please write word or multiple words: walk
# There are 4 characters in "walk".

puts "Please write a word or multiple words:"
words = gets.chomp
arr = words.split
char_num = 0
loop do
  word = arr.pop
  char_num += word.size
  break if arr.empty?
end
puts "There are #{char_num} characters in \"#{words}\"."