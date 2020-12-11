# Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.
# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# divmod 100 century +1 if remainder > 0
#if remainder 11-14 th
#elsif divmod 10 1 st 2 nd 3 rd 4-9 th

def century(year)
  cent, rem = year.divmod(100)
  cent += 1 if rem > 0
  ending = "th"
  centrem = cent.remainder(100)
  if centrem < 4 || centrem > 20
    centrem2 = cent.remainder(10)
    case centrem2
    when 3
      ending = "rd"
    when 2
      ending = "nd"
    when 1
      ending = "st"
    end
  end
  p cent.to_s + ending
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'