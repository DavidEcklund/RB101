# In the previous exercise, you developed a method that converts non-negative numbers to strings. In this exercise, you're going to extend that method by adding the ability to represent negative numbers as well.

# Write a method that takes an integer, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. You may, however, use integer_to_string from the previous exercise.

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def signed_integer_to_string(int)
  result = ""
  if int < 0
    sign = "-"
    int = -int
  elsif int > 0
    sign = "+"
  else
    sign = ""
  end
  p sign
  loop do
    int, rem = int.divmod(10)
    result.prepend(DIGITS[rem])
    break if int == 0
    p result
  end
  p sign + result
end


p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'