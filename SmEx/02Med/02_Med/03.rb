=begin

Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

You may assume that the string will always contain at least one character.

INPUT = string
OUTPUT = hash of percentage of lower- uppercase and other

RULES: assume non-empty strings

DATA
hash
string

ALGORITHM

initialize hash with defaults set at 0

interate through string by character
 at each character, test (case) by lowercase, uppercase, else
   increment corresponding hash value by key
compare all values of hash
  calculate percentage represented by each
replace values with the percentages
output hash
=end

# def letter_percentages(string)
#   hash = {  lowercase: 0, 
#             uppercase: 0,
#             neither: 0
#                           }
#   string.each_char do |char|
#     case char
#     when /[a-z]/ then hash[:lowercase] += 1
#     when /[A-Z]/ then hash[:uppercase] += 1  
#     else hash[:neither] += 1 
#     end
#   end
#   sum = hash.values.sum
#   hash.each do |k,v|
#     if (v * 100) % (sum) == 0
#       hash[k] = (v * 100).div(sum)
#     else
#       hash[k] = (v * 100) / sum.to_f
#     end
#   end   
# end

def letter_percentages(string)
  hash = {  lowercase: 0, 
            uppercase: 0,
            neither: 0
                          }
  char_value = (100.0 / string.size)
  string.each_char do |char|
    case char
    when /[a-z]/ then hash[:lowercase] += char_value
    when /[A-Z]/ then hash[:uppercase] += char_value  
    else hash[:neither] += char_value 
    end
  end
  hash 
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
p letter_percentages('abcdefGHI')