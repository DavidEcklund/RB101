# Write a method that takes a string, and returns a new string in which every character is doubled.

def repeater(str)
  result = ""
  str.each_char {|ch| result.concat(ch * 2)}
  result
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
