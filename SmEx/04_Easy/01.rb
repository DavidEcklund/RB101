# Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.

# long v sh 

def short_long_short(s1, s2)
  if s1.size > s2.size
    long = s1
    short = s2
  else
    long = s2
    short = s1
  end
  short + long + short  
end

p short_long_short('abc', 'defgh')
p short_long_short('abcde', 'fgh')
p short_long_short('', 'xyz')