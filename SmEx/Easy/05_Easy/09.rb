# Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

# Algorithm
# str.chars
# each with index > "" if el == arr[idx-1]
# join


def crunch(str)
  str2 =""
  str.each_char do |ch|
    str2.concat(ch) unless str2[-1] == ch
  end
  str2
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''