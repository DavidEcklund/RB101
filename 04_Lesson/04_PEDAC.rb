# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Do: write the input, output, and rules 

# start at first char and iterate through string's substrings
#   one char, two chars, etc until length of subst = str - index of start
       #
# At each iteration, check if subst == substr.reverse
#   if so, add to result Array

# rules:
#     all contiguous characters tested
#     empty string returns empty Array
#     if none return empty Array


def palindrome_substrings(str)
  results = []
  str.each_char.with_index do |_, ind|
    counter = 1
    while str.length > (ind + counter)  #starting from ch iterate all subs
      subs = str[ind..(ind + counter)]
      results << subs if subs == subs.reverse && subs.length > 1
      counter += 1
    end
  end
  p results
end
    

p palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
p palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
p palindrome_substrings("palindrome") == []
p palindrome_substrings("") == []