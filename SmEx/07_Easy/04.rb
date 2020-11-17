# Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.

def swapcase(str)
  lower = ("a".."z").to_a
  upper = ("A".."Z").to_a
  l_to_up = lower.zip(upper).to_h
  up_to_l = upper.zip(lower).to_h
  newstr = ""
  str.each_char do |ch|
    if lower.include?(ch)
      newstr.concat(l_to_up[ch])
    elsif upper.include?(ch)
      newstr.concat(up_to_l[ch])
    else
      newstr.concat(ch)
    end
  end
  newstr
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'