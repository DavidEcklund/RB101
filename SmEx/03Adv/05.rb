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

def rotate90(matrix)
  new_matrix = empty_matrix(matrix)
  0.upto(matrix.size-1) do |row_to_column|
    0.upto(matrix[0].size-1) do |column_to_row|
      new_matrix[column_to_row].prepend matrix[row_to_column][column_to_row]  ##switched << to prepend
    end
  end
  new_matrix
end


matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2