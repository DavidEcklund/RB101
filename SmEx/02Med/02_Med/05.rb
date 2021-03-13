=begin
A triangle is classified as follows:

equilateral All 3 sides are of equal length
isosceles 2 sides are of equal length, while the 3rd is different
scalene All 3 sides are of different length
To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

***

INPUT = 3 numbers
OUTPUT = one of 4 symbols (:equilateral, :isosceles, :scalene, or :invalid)

RULES
equilateral All 3 sides are of equal length
isosceles 2 sides are of equal length, while the 3rd is different
scalene All 3 sides are of different length BUT NOT A
Invalid: If the sum of the lengths of the two shortest sides are not greater than the length of the longest side, OR any side do not have a length greater than 0

DATA
number
symbol

ALGORITHM
assign side1, side2, and side3
return :equi if all are equal
return :isos if 2 are equal
return invalid if 
  s1 + s2 < s3, || s2 + s3 < s1 || s1 + s3 < s2 OR if any side = 0
  :scalene
=end

def triangle(s1, s2, s3)
  sides = [s1,s2,s3].sort

  if s1 == s2 && s2 == s3
    :equilateral 
  elsif sides[2] >= sides[1] + sides[0] || [sides].include?(0)
    :invalid 
  elsif s1 == s2 || s2 == s3 || s1 == s3
    :isosceles 
  else
    :scalene  
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid