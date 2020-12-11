# Write a method that can rotate the last n digits of a number. For example:

# take last number and put it at the end
# take n number and put it at the end

def rotate_rightmost_digits(int, num_to_end)
  first_part = int.to_s[0..(-num_to_end - 1)]
  last_part = int.to_s[-num_to_end..-1]
  last_part = last_part[1..-1] << last_part[0]
  (first_part << last_part).to_i
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
