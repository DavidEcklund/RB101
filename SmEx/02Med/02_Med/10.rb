=begin

Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

INPUT = integer
OUTPUT = integer

RULES
  -if input is 3, then 1,2,and 3 are used:
    - (1+2+3)**2
    - 1**2 + 2**2 + 3**2
    - find the difference
    
DATA
integers

ALGORITHM

1..number range to array
send array to two different methods
square of sum method
  (arr.sum)**2
sum of squares method
  iterate over array
    square each number and add it to the sum
    
return the absolute value of one minus the other

=end

def sum_square_difference(num)
  array = (1..num).to_a
  sum_squares = 0
  array.each { |n| sum_squares += n**2}
  (sum_squares - (array.sum**2)).abs  
end


p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150