=begin
Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

INPUT = odd integer
OUTPUT = 4 pointed diamond
          - start with 1 * on first line
          - next line add 2 (one on each side)
          - continue until integer is reached
          - then reverse trend back down to 1 *

DATA

strings

  
diamond(1)

*
  
diamond(3)

 *
***
 *
  
diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *
    
=end

def print_stars(stars, spaces)
  print (" " * spaces)
  puts ("*" * stars)
end

def diamond(int)
  spaces = (int -1) / 2
  stars = 1
  
  loop do
    print_stars(stars, spaces)
    break if stars == int
    stars += 2
    spaces -= 1
  end

  loop do
    break loop if stars == 1
    stars -= 2
    spaces += 1
    print_stars(stars, spaces)
  end

end
  
diamond(1)
  
diamond(3)

diamond(9)

=begin


ALOGRITHM

intitialize spaces to (integer -1) / 2
initialize stars to 1

define print_stars method(stars, spaces)
  print (" " spaces times)
  print ("*" starts times)
  puts (" " spaces times)
end

loop
  print_stars(stars, spaces)
  break loop if stars == integer
  reassign stars to stars + 2
  increment spaces 1 down
end

loop
  reassign stars to stars - 2
  increment spaces 1 up
  print_stars(stars, spaces)
  break loop if stars == 1
end


=end