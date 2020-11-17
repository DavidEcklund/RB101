# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

# Examples:

# Copy Code
# triangle(5)

#     *
#    **
#   ***
#  ****
# *****
# Copy Code
# triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********

# Algorithm
# counter = 1
# loop 
# break if counter == num
# print num-counter " "
# print "*" * counter + \n
# counter+= 1

def triangle(num)
  counter = 1
  loop do
    break if counter > num
    print " " * (num - counter)
    print "*" * counter
    print "\n"
    counter += 1
  end
end


triangle(5)
triangle(9)
