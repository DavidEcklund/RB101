def sum(pos_int)
  arr = pos_int.to_s.chars.map(&:to_i)
  s = arr.reduce(:+)
end


puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45