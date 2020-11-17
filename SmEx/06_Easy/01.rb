# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

# You should use two digit numbers with leading zeros when formatting the minutes and seconds, e.g., 321°03'07".

# Algorithm
# deg - float.floor
# min_fl = (float - deg) * 60
# min = min_fl.floor
# sec = (min_fl - min) * 60
# sec = sec.round


DEGREE = "\xC2\xB0"

def two_dig(int)
  int.to_s.size < 2 ? int.to_s.prepend("0") : int.to_s
end

def dms(float)
  deg = float.floor
  min_fl = (float - deg) * 60
  min = min_fl.floor
  sec = (min_fl - min) * 60
  sec = sec.round
  min = two_dig(min)
  sec = two_dig(sec)
  ans = deg.to_s  + DEGREE + min + "'" + sec + "\""  
  puts ans 
  ans
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# Note: your results may differ slightly depending on how you round values, but should be within a second or two of the results shown.

