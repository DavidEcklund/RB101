=begin
INPUT = array of arrays (3x3 square)
OUTPUT = new array of sma einner elements transposed (see test case)
 
RULES
  do not use the Array#transpose method 
  or the Matrix class

ALGORITHM
  
initialize new array with 3 empty sub arrays

new arry[row] << array[0][col] << array [1][col] << array [2][col]

find out how many sub array and how many elements each
create an empty matrix with those dimensions reversed


=end

def empty_matrix(matrix)
  empty = []
  new_matrix = []
  matrix[0].size.times {new_matrix << empty.dup}
  new_matrix  
end

def transpose(matrix)
  new_matrix = empty_matrix(matrix)
  0.upto(matrix.size-1) do |row_to_column|
    0.upto(matrix[0].size-1) do |column_to_row|
      new_matrix[column_to_row] << matrix[row_to_column][column_to_row]
    end
  end
  new_matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]