=begin
Write a program that reads the content of a text file and then prints the longest sentence in the file based on number of words. Sentences may end with periods (.), exclamation points (!), or question marks (?). Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word. You should also print the number of words in the longest sentence.

INPUT = txt file
OUTPUT = print longest sentence and its length in words

RULES
sentences end with "." "!" or "?"
any sequence of charactes that is not one of the above or spaces counts as a word


DATA
string
array

ALOGORITHM

load txt file into text (string variable)
split the text into sentences and put the result into text_array
  split at end sentence ender
    use grep or some such

iterate through each sentence using max_by
  find the sentence with the most words
    
print sentence and sentence length

=end

def longest_sentence(text)
  text = text.gsub("\n", " ").squeeze(" ")
  text_array = text.split(/(?<=[?.!])/)
  longest = (text_array.max_by { |sentence| sentence.split.length})
  puts longest
  puts longest.split.length
end


text = File.read ("four_score.txt")

longest_sentence(text)

