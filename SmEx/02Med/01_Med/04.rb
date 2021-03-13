# You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

# create array of n booleans starting false
# lap 1
# loop switching certain lights by index
#   lap 1 hits every 1 which_switch
#   lap 2 hits every 2...
#     until which_switch - 1 > n
#   lap += 1
#   until incremented to n
# end loop
# convert array of booleans to an array of true indexes
  # iterate through and return a new array of the indexes of the true
  # # result = each_with_index conditional
  #    if element, return index

def convert_boolean_to_index(arr)
  new_arr = []
  arr.each_with_index do |boolean, ind|
    new_arr << (ind + 1) if boolean
  end
  new_arr
end

def light_switching(lights)
  switches = [false] * lights
  lap = 1

  loop do
    switch = 0

    loop do
      switch += lap
      break if switch >= lights

      switches[switch - 1] = !(switches[switch - 1])
    end

    lap += 1
    break if lap > lights
  end

  convert_boolean_to_index(switches)
end

p light_switching(5) == [1, 4]
p light_switching(10) == [1, 4, 9]
p light_switching(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]
