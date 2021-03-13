=begin
A collection of spelling blocks has two letters per block, as shown in this list:

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

=end

def block_word?(string)
  blocks = [
            ["B","O"],
            ["X","K"],
            ["D","Q"],
            ["C","P"],
            ["N","A"],
            ["G","T"],
            ["R","E"],
            ["F","S"],
            ["J","W"],
            ["H","U"],
            ["V","I"],
            ["L","Y"],
            ["Z","M"]
                      ]
  
  string.each_char do |ch|
    ch = ch.upcase
    blocks.map! do |block|
      block.delete(ch)
      return false if block.size == 0
      block
    end
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

=begin

INPUT = case insensitive string
OUTPUT = boolean

RULES: one use each block once (e.g. only "B" _or_ "O", not both)

DATA
array of arrays

ALGORITHM
establish an array of arrays
 each sub array has two elements as above defined
iterate through each char of string input
  find element in array
    iterate through array
      send each subarray to block_check method
block_check
      test each sub array for presence of element (index)
      if subarray with that element has only one element already, return false
        otherwise, delete element

=end