# Build a program that displays when the user will retire and how many years she has to work till retirement.

puts "What is your age?"
age = gets.chomp.to_i
puts "At what age would you like to retire?"
ret_age = gets.chomp.to_i
til_ret = ret_age - age

puts "It's 2020. You will retire in #{2020 + til_ret}."
puts "You have only #{til_ret} years of work to go!"

