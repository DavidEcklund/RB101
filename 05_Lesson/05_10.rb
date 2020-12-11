# Given the following data structure and without modifying the original array, use the map method to return a new array identical in structure to the original but where the value of each integer is incremented by 1.

old = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
new = old.map do |hash|
  hash2 = hash.dup
  
  hash.map do |k, v|
    k2 = k.dup
    v2 = v.dup
    hash2[k2] = v2 + 1
  
  end
  hash2
end

p old
p new


Given the following data structure use a combination of methods, including either the select or reject method, to return a new array identical in structure to the original but containing only the integers that are multiples of 3.

Copy Code
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]