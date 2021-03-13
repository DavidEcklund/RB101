# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# Algorithm
# ind_arr = array length of arr
# arr.each_with_index >>push ind_arr[-index)] into hash

# NEW
# arr2 = arr.dup
# arr2.each_with_index >> array[-index].replace(el)


def reverse!(arr)
  arr2 = arr.dup
  arr2.each_with_index { |el, ind| arr[-ind-1] = (el)}
  arr
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []