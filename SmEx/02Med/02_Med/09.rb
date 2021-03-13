=begin
Write a method that takes an Array as an argument, and sorts that Array using the bubble sort algorithm as just described. Note that your sort will be "in-place"; that is, you will mutate the Array passed as an argument. You may assume that the Array contains at least 2 elements.

***

INPUT = array of integers
OUTPUT = array of integers (sorted)

RULES:
-assume 2 or more elements
-sort one pair at a time, moving from index 0 to index -1, moving one index at a time

DATA
arrays
depends on input
  -strings
  -integers
  
ALGORITHM
0 upto arr.size -2
compare arr[ind] and arr[ind+1]
  if not an integer, convert NOT NEEDED
if arr[ind] is bigger, swap them (mutate e.g. replace)


=end

def bubble_sort!(arr)
  loop do
    swapped = false
    0.upto((arr.size)-2) do |ind|
      if arr[ind] > arr[ind+1]
        arr[ind], arr[ind+1] = arr[ind+1], arr[ind]
        swapped = true
      end
    end
    break if swapped == false
  end
  arr
end

array = [5, 3]
p bubble_sort!(array) == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array) == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)