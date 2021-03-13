=begin
Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

DATA
string
array
hash

ALORITHM
  -initialize hash "one":"1", etc
  -break string into word array
    
      
  +iterate over word array 
    +if transformation takes place 
      +check ahead in array to see if next will as well
        +if so, add to string WITHOUT space
      +then check string if this is the last in a series of 10 numbers (without spaces)
        +if so, gsub string into phone format
    otherwise, add each element to result string with space added

I believe I have satisfied all the requirements in the "further exploration." Please don't mind the weird test case.
=end

def word_to_digit(string)
  arr1 = ("0".."9").to_a
  arr2 = %w(zero one two three four five six seven eight nine)
  hash = arr2.zip(arr1).to_h  # Here's the test hash
  word_array = string.split
  result = ""
  word_array.each_with_index do |word, index|
    added = false
    hash.each_key do |num_word|
      if word =~ /\b#{num_word}\b/i
        result << word.gsub(/\b#{num_word}\b/i, hash[num_word])
        added = true
        if result.size >= 10 && result[-10..-1].to_i.to_s == result[-10..-1]
          result[-10..-1] = "("+result[-10..-8]+") "+result[-7..-5]+"-"+result[-4..-1]
        end
        result << " " unless hash.each_key.any? {|key| word_array[index+1] =~ /\b#{key}\b/i}
      end
    end
    unless added 
      result << word 
      unless word_array[index] == word_array[-1]
        result << " " 
      end
    end
  end
  result
end


p word_to_digit('9 1 1 Please call me at the freight station at 9 1 1 five Five five seven seven SIX one two three four 9 1 1. Thanks. Zero four. 1 2 3 4 5 6 7 8 9 0.') == '9 1 1 Please call me at the freight station at 9 1 1 (555) 776-1234 9 1 1. Thanks. 04. 1 2 3 4 5 6 7 8 9 0.'