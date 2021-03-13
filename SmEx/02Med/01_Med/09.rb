# already had done this in last one!

def fibonacci(input)
  fib_array = [0, 1] 

  loop do
    return fib_array[-1] if (fib_array.size - 1) == input
    fib_array << (fib_array[-2] + fib_array[-1])
  end
  
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501