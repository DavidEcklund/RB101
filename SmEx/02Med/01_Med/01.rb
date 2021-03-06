# Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

def rotate_array(arr)
  arr2 = arr.dup
  char = arr2.shift
  arr2 << char
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

# Further Exploration
# Write a method that rotates a string instead of an array. Do the same thing for integers. You may use rotate_array from inside your new method.

def rotate_string(str)
  rotate_array(str.chars).join
end

p rotate_string("Hello") == "elloH"

def rotate_integer(int)
  rotate_array(int.digits.reverse).join.to_i
end
p rotate_integer(12345) == 23451