=begin
Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

INPUT = string (sentence)
OUTPUT = same string with number names (one, two...) converted into 1, 2...

DATA

string
array

=end

NUMBERS = %w(zero one two three four five six seven eight nine)
PUNCTUATION = [".", ","]

def replace_word(word)
  word.replace(NUMBERS.index(word).to_s)
end

def word_to_digit(sentence)
  array = sentence.split
  
  punct_array = array.map do |word|
                  word[-1] if PUNCTUATION.include?(word[-1])
                end
  
  array.map! do |word|
    word.delete("\.\,")
  end

  array.each do |word|
    replace_word(word) if NUMBERS.include?(word)
  end
  
  punct_array.each_with_index do |punct, index|
    array[index] << punct if !(punct.nil?)
  end
  
  array.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

=begin

ALGORITHM

intialize constant NUMBERS to zero, one, two etc at corresponding indices
split string into array
locate indices where there is puntuation, and store the punction in a separate array
  iterate through array with map
  if there is punctuation, return that
  if not, return nil
end
delete all punctuation.
iterate through array
  test if word is included in NUMBERS
    if so, replace with the index as string (0,1,2...)
end
interation through punctuation
  if not nil append puntuaction to matching index in sentence array
join array into string with spaces

=end