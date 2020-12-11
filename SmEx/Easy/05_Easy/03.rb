# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

# Yes, we know that 24:00 isn't a valid time in 24-hour format. Humor us, though; it makes the problem more interesting.

# Disregard Daylight Savings and Standard Time and other irregularities.

# Algorithm:

def time_arr(time_str)
  time_str.split(":")
end

def time_prep(time)
  arr = time_arr(time)
  hour = arr[0].to_i
  hour = 0 if hour == 24
  minute = arr[1].to_i
  [hour, minute]
end

def after_midnight(time_str)
  arr = time_prep(time_str)
  arr[0] * 60 + arr[1]  
end

def before_midnight(time_str)
  return 0 if after_midnight(time_str) == 0
  1440 - after_midnight(time_str)
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
