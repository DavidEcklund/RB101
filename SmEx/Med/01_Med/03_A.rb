#I did this without having the method from the first two. I then went back to the second and incorporated it into this one (3 with 2.rb) and then back to the first and incorporated that into the second(2 with 1 rb). I expect I will also make a  3 final.rb

# If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

# Note that you do not have to handle multiple 0s.

# first digit to end
# freeze first digit, rest of integer separate
# New first digit to end
# ....
# (until 2nd to last digit)

def rotate_substring(last_part)
  first_char = last_part[0]
  arr = last_part.chars
  arr.shift
  last_part = arr.join
  last_part << first_char
end

def freeze_and_rotate(array_of_digits, first_of_last)
  last_part = array_of_digits[first_of_last..-1].join
  last_part = rotate_substring(last_part)
  first_part = array_of_digits[0, first_of_last]
  array_of_digits = if first_part.nil?
                      last_part.chars
                    else
                      first_part << last_part.chars
                    end
end

def max_rotation(int)
  array_of_digits = int.to_s.chars
  first_of_last = 0
  loop do
    array_of_digits = freeze_and_rotate(array_of_digits, first_of_last).flatten!
    first_of_last += 1
    break if array_of_digits.length - first_of_last < 2
  end
  array_of_digits.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
