# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

# Examples:

puts "Please enter an integer greater than 0:"
num = gets.chomp.to_i
puts "Enter 's' to compute the sum, 'p' to compute the product."
op = gets.chomp

# if op == "s"
#   sum = 0
#   for i in 1..num do
#     sum += i
#   end
#   puts "The sum of the integers between 1 and #{num} is #{sum}."
# elsif op =="p"
#   prod = 1
#   for i in 1..num do
#     prod *= i
#   end
#   puts "The product of the integers between 1 and #{num} is #{prod}."
# end

if op == "s"
  sum = (1..num).inject(:+)
  puts "The sum of the integers between 1 and #{num} is #{sum}."
elsif op =="p"
  prod = (1..num).inject(:*)
  puts "The product of the integers between 1 and #{num} is #{prod}."
end