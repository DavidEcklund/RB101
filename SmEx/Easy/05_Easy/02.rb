# The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

# 60 min/hour
# 1440 min in day

def two_dig_str(num)
  return num.to_s.prepend("0") if num.to_s.chars.length == 1
  return num.to_s
end

def time_of_day(time)
  # p time
  hours, minutes = time.divmod(60)
  # p hours
  # p minutes
  days, hours = hours.divmod(24)
  # p days
  # p hours
  minutes = two_dig_str(minutes)
  hours = two_dig_str(hours)
  p hours + ":" + minutes
end


p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"