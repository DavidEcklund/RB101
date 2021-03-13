=begin

Sort an array of passed in values using merge sort. You can assume that this array may contain only one type of data. And that data may be either all numbers or all strings.

Merge sort is a recursive sorting algorithm that works by breaking down the array elements into nested sub-arrays, then recombining those nested sub-arrays in sorted order. It is best shown by example. For instance, let's merge sort the array [9,5,7,1]. Breaking this down into nested sub-arrays, we get:

[9, 5, 7, 1] ->
[[9, 5], [7, 1]] ->
[[[9], [5]], [[7], [1]]]
We then work our way back to a flat array by merging each pair of nested sub-arrays:

[[[9], [5]], [[7], [1]]] ->
[[5, 9], [1, 7]] ->
[1, 5, 7, 9]

***

INPUT = array
OUTPUT = array sorted)

RULES
  -divide array by half, and the subarrays thus produced until each element is in its own array
  -combine in a sorted way exactly two arrays (starting with one element in each) at a time
  
DATA 
array

ALGORITHM

divide array in two
  return the array if it has only one element
  divide array in half (by size) [0..middle]
  each half send to "divide array in two"

**

procedure mergesort( var a as array )
   if ( n == 1 ) return a

   var l1 as array = a[0] ... a[n/2]
   var l2 as array = a[n/2+1] ... a[n]

   l1 = mergesort( l1 )
   l2 = mergesort( l2 )

   return merge( l1, l2 )
end procedure
=end

def merge_sort(arr)
  return arr if arr.size == 1
  
  l1 = arr[0...(arr.size / 2)]
  l2 = arr[(arr.size / 2)..-1]
  
  l1 = merge_sort(l1)
  l2 = merge_sort(l2)
  
  return merge(l1, l2)
end
  

def merge(a1, a2)  
  result = []
  index2 = 0
  
  a1.each do |value|
    while index2 < a2.size && (value <=> a2[index2]) == 1
      result << a2[index2]
      index2 += 1
    end
    result << value
  end
  result.concat(a2[index2..-1])
end
  
=begin
ALGORITHM
ARRAYS ARE ALREADY SORTED
iterate through an array
  add any number(s) from the other array into the results
  add the number in the first array
  careful not to add anything that isn't there!
add in the rest of second array
=end
p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]