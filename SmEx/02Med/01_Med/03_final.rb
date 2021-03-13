def rotate_array(arr)
  arr2 = arr.dup
  char = arr2.shift
  arr2 << char
end

def rotate_rightmost_digits(int, num_to_end)
  arr = int.to_s.chars
  arr[-num_to_end..-1] = rotate_array(arr[-num_to_end..-1])
  arr.join.to_i
end

def max_rotation(int)
  first_of_last = int.to_s.length
  loop do
    int = rotate_rightmost_digits(int, first_of_last)
    first_of_last -= 1
    break if first_of_last < 2
  end
  int
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
