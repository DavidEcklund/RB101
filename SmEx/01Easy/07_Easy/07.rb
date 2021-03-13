# Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

# Algorithm
# sum = arr map *.sum
# sum / arr.lenth %.3f

def show_multiplicative_average(int_arr)
  total = 1.0
  int_arr.each {|n| total = n*total}
  puts "#{format('%.3f', (total / int_arr.length))}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667