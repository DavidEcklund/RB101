# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].

count = ["1st", "2nd", "3rd", "4th", "5th", "last"]
nums = []
new = 0
loop do
  puts "Enter the #{count.shift} number:"
  new = gets.to_i
  nums.push(new) if nums.length < 5
  break if count.empty?
end
puts nums.include?(new)? "The number #{new} appears in #{nums}." : "The number #{new} does not appear in #{nums}."
