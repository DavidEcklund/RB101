# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

# You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

# Algorithm
# split to arr; first/last char to new arr; reverse; prepend/concat.
# arr join' '

def swap(str)
  arr = str.split

  arr.map! do |w|
    l = w[-1]
    f = w[0]
    w[0] = l
    w[-1] = f
    w
  end
  arr.join(" ")
end


p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
