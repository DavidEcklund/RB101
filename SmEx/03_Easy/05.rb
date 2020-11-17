# Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).
# Example:
# square(5) == 25
# square(-8) == 64

def multiply(first, second)
  first * second
end

def square(single)
  multiply(single, single)
end

# puts square(5)
# puts square(-8)

# What if we wanted to generalize this method to a "power to the n" type method: cubed, to the 4th power, to the 5th, etc. How would we go about doing so while still using the multiply method?

def powers(single, power)
  total ||= 1
  loop do   
    break if power == 0
    total = multiply(single, total)
    power -= 1
  end
  total
end
p powers(2,8)
p powers(3,6)
p powers(22,0)