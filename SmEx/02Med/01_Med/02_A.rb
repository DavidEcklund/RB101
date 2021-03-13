# Write a method that can rotate the last n digits of a number. For example:

# take last number and put it at the end
# take n number and put it at the end

def rotate_rightmost_digits(int, num_to_end)
  first_part = int.to_s[0..(-num_to_end-1)]
  last_part = int.to_s[-num_to_end..-1]
  last_part = last_part[1..-1] << last_part[0]  
  (first_part << last_part).to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
