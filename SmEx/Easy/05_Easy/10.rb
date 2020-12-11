# Write a method that will take a short line of text, and print it within a box.

# Algorithm
# str.length = 4 #space and line on each side
# puts +, - * length + 2, +
# puts |, " " * ^
# puts " interpolate"
# repeat above


def print_in_box(str)
  l = str.length
  print "+"
  (l+2).times {print "-"} 
  puts "+"
  print "|"
  (l+2).times {print " "}
  puts "|"
  puts "| " + str + " |"
  print "|"
  (l+2).times {print " "}
  puts "|"
  print "+"
  (l+2).times {print "-"} 
  puts "+"
end

print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

 print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+