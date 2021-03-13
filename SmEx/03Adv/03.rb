=begin
INPUT = array of arrays (3x3 square)
OUTPUT = new array of sma einner elements transposed (see test case)
 
RULES
  do not use the Array#transpose method 
  or the Matrix class

ALGORITHM
  
initialize new array with 3 empty sub arrays

new arry[row] << array[0][col] << array [1][col] << array [2][col]


=end

def transpose(arr_of_arr)
  new_array = [[],[],[]]
  0.upto(arr_of_arr.size-1) do |row_to_column|
    0.upto(arr_of_arr.size-1) do |column_to_row|
      new_array[column_to_row] << arr_of_arr[row_to_column][column_to_row]
    end
  end
  new_array
end


matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]