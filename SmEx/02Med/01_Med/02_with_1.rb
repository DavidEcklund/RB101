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

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
