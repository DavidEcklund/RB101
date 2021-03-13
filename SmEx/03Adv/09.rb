=begin
Every positive rational number can be written as an Egyptian fraction. For example:

    1   1   1   1
2 = - + - + - + -
    1   2   3   6
    
Write two methods: one that takes a Rational number as an argument, and returns an Array of the denominators that are part of an Egyptian Fraction representation of the number, and another that takes an Array of numbers in the same format, and calculates the resulting Rational number. You will need to use the Rational class provided by Ruby.

###Every rational number can be expressed as an Egyptian Fraction. In fact, every rational number can be expressed as an Egyptian Fraction in an infinite number of different ways. Thus, the first group of examples may not show the same values as your solution. They do, however, show the expected form of the solution. The remaining examples merely demonstrate that the output of egyptian can be reversed by unegyptian.###

***

INPUT = Rational number
OUTPUT = array of integers (representing the denominators of unit fractions the sum of which equals the input fraction)

RULES
  -write two methods
  -use the Rational class

DATA
Rational numbers
array

ALGORITHM egyptian
results = []
denominator intialized to 1
loop
  test if 1/denominator is smaller or equal to input
  if so, subtract it from it and add demoninator to results array
  increment denominator
  
ALGORITHM unegyptian
result = Rational(0,1)
map! over array to turn all in unit fractions
sum => result
  
=end

def egyptian(rational)
  result = []
  denom = 1
  loop do
    if Rational(1,denom) <= rational
      result << denom
      rational -= Rational(1,denom)
    end
    denom += 1
    break if rational == 0
  end
  result
end

egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]


def unegyptian(array)
  array.map! {|denom| Rational(1,denom)}.sum
end

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)