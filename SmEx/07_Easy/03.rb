# Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

# Algorithm
# split str 
# each word 
#   word[0].upcase

def word_cap(str)
  str = str.split
  str.each do |word|
     word[0] = word[0].upcase
     word[1..-1] = word[1..-1].downcase
  end
  str.join(' ')
end


p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'