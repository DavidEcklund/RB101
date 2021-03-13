=begin

A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Return an error message if there is no next featured number.

***

NOTES GOT ZAPPED

ALGORITHM

loop
  num is odd? if so, add 2, if not add 1
  num is multiple of seven (% == 0)? if not next
  num chars all uniq?
  num.to_s.size > 9 ? return error
  return num
  
=end

def featured(num)
  num += 1
  num += 1 until num.odd? && num % 7 == 0
  loop do
    break if num > 9_876_543_210
    return num if num.digits.uniq == num.digits
    num += 14
  end
  "There is no possible number that fulfills those requirements"
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements