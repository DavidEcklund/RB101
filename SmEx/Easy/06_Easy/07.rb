# Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

# Algorithm
# arr.each_with_index |el, ind|
#   ind - (arr.length / 2).floor? newarr[arr2] <<el : newarr[arr1] << el 

def halvsies(arr)
  newarr = [[],[]]
  length_latter = (arr.length.to_f / 2).floor
  arr.each_with_index do |el, ind|
    arr.length - ind > length_latter ? newarr[0] << el : newarr[1] << el
  end
  newarr
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]