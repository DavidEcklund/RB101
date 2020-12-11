# Given this data structure write some code to return an array which contains only the hashes where all the integers are even.

# select elements of array which are hashes with values only of even integers (assume all are integers)
#   select_by values all even?

# output = array of hashes

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr2 = arr.select do |hsh|
  hsh.values.flatten.all? {|i| i.even?}
end

p arr2