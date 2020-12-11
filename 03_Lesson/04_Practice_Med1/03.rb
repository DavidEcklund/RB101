def factors(number)
  divisor = number.abs
  factors = []
  while divisor > 0 do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

p factors(5)
p factors(-55687)
p factors(-5)
p factors(0)