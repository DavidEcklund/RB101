=begin

Write a method that displays an 8-pointed star in an nxn grid, where n is an odd integer that is supplied as an argument to the method. The smallest such star you need to handle is a 7x7 grid.

INPUT = odd!! integer (lengthxwide of grid)
OUTPUT = 8 pointed star made of "*"s

RULES
assume no stars smaller than 7x7 grid

DATA
string
?

ALGORITHM

input - 3 div by 2 = each space at beginning
  9 => 3
start_space = 0
start_space star space(min 2 to start) star space(min 2 to start) star (new line)
decrease space by one, increase start_space by 1 and repeat until no space (***)
then stars * input
then mirror (starting with 3 stars)

=end

def star(grid)
  space = (grid - 3) / 2
  start_space = 0
  increment = 1
  1.upto(grid-1) do |line|
    puts (" " * start_space) + "*" + (" " * space) + "*" + (" " * space) + "*"
    if space == 0 && increment == 1
      puts ("*" * grid)  # (grid-1) used above because this is the second line output within one iteration
      increment = -1     # here is the flip
      next
    end
    start_space += increment
    space -= increment
  end
end

star(7)

# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *

star(9)
star(31)