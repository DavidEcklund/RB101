# Write a recursive method that computes the nth Fibonacci number, where nth is an argument to the method.
  
# def sum(n)
#   return 1 if n == 1
#   n + sum(n - 1)
# end




# def fibonacci(input) BASIC
#   fib_array = [0, 1] 

#   loop do
#     fib_ind = (fib_array.size - 1)
#     return fib_array[-1] if fib_ind == input
#     n1 = fib_array[-2]
#     n2 = fib_array[-1]
#     fib_array << (n1 + n2)
#   end
  
# end

# def fibonacci(input) REFACTORED
#   fib_array = [0, 1] 

#   loop do
#     return fib_array[-1] if (fib_array.size - 1) == input
#     fib_array << (fib_array[-2] + fib_array[-1])
#   end
  
# end

def fibonacci(input)
  input <= 2 ? (return 1) : fibonacci(input - 2) + fibonacci(input - 1)
  
end


p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765

=begin

INPUT = integer
OUTPUT = the Fibonacci number at that place in the series (starting 1st = 1, 2nd = 1, 3rd = 2 ie..(1+1))

RULES: must be recursive

DATA
integers
array

ALGORITHM

Option 1:
num1 = 0
num2 = 1
array << num2
return array.size if it equals input
num2 = num2 + num1

Option 2:
fib_array = [0, 1]  (by 0 index!)

loop do
  n1 = fib_array[-2]
  n2 = fib_array[-1]
  fib_array << (n1 + n2)
  return (fib_array.size - 1) if it equals input
end

=end