=begin

Write a method that takes two sorted Arrays as arguments, and returns a new Array that contains all elements from both arguments in sorted order.

You may not provide any solution that requires you to sort the result array. You must build the result array one element at a time in the proper order.

Your solution should not mutate the input arrays.

***

INPUT = two sorted arrays
OUPUT = new array with all elements sorted

RULES
  -no sorting the result array
  -build the result array one element at a time in the proper order
  -do not mutate the input arrays
  
DATA
array

ALGORITHM

if any array is empty return a dup of the other array

compare the min of first array with the min of the other array
take the smaller of the two to start (or the value of either one if equal)

iterate
  count how many times this value is found in both arrays total
  add that value that many times into the result array
  increment value and check if it is present in either array
  keep going until a value is found
when result array size is equal to the combined size of the other two, stop

=end

def merge(a1, a2)
  return a2 if a1.empty?
  return a1 if a2.empty?  
  result = []
  
  value = case a1.min <=> a2.min
          when -1 then a1.min
          else a2.min
          end
    
  loop do 
    how_many = [a1,a2].flatten.count(value)
    how_many.times { result << value }
    break if result.size >= (a1.size + a2.size)
    loop do
      value += 1
      next if [a1,a2].flatten.count(value) == 0
      break
    end
  end
  result
end


p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
