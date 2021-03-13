# Write a method that returns the next to last word in the String passed to it as an argument.

# Words are any sequence of non-blank characters.

# You may assume that the input String will always contain at least two words.


# def penultimate(str)
#   arr = str.split
#   arr[-2]
# end

# p penultimate('last word') == 'last'
# p penultimate('Launch School is great!') == 'is'

# Suppose we need a method that retrieves the middle word of a phrase/sentence. What edge cases need to be considered? How would you handle those edge cases without ignoring them? Write a method that returns the middle word of a phrase or sentence. It should handle all of the edge cases you thought of.

# edge cases:
# empty
# even
# one only
 

def middle_word(str)
  if str.empty?
    return str
  end
  word_arr = str.split
  l = (word_arr.length / 2.0).floor
  word_arr[(l)]
end

p middle_word('last word') == 'word'
p middle_word('Launch School is great!') == 'is'
p middle_word("Hi I am") == 'I'
p middle_word("Hi I am very happy") == 'am'
p middle_word("") == ''
