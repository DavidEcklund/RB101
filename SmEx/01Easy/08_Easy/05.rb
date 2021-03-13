# Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

def leading_substrings(str)
  arr = []
  str = str.chars
  loop do
    arr << str.join
    str.pop
    break if str.empty?
  end
  arr.sort
end

def substrings(str)
  arr =[]
  loop do
    arr << leading_substrings(str)
    str.slice!(0)
    break if str.empty?
  end
  arr.flatten
end

# def palindromes(str)
#   arr = substrings(str)
#   result = []
#   arr.each do |subs|
#     next if subs.length <= 1
#     counter = 0
#     mirror_char = true
#     loop do
#       mirror_char = subs[counter] == subs[-counter-1]
#       counter += 1
#       break if counter > subs.length / 2 || !mirror_char
#     end
#     result << subs if mirror_char 
#   end
#   p result
# end

def palindromes(str)
  arr = substrings(str)
  result = []
  arr.each do |subs|
    next if subs.length <= 1
    result << subs if (subs == subs.reverse)
  end
  result
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]