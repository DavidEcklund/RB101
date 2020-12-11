# Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

# Algorithm
# # hash str => int; 
# str.sort; return arr = order.each hash[str]


def alphabetic_number_sort(arr)
  str_arr = %w(zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen)
  int_arr = (0..19).to_a
  hash = str_arr.zip(int_arr).to_h
  output_arr = []
  str_arr.sort!.each {|str| output_arr.push(hash[str])}
  p output_arr
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]