# Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

# Algorithm

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


p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']