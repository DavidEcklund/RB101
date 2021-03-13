def stringy(pos_int)
  char = ""
  pos_int.times do
    if char[-1] == "1"
      char << "0"
    else
      char << "1"
    end
  end
  char
end


# int times push 1 if last not 1 
#

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'