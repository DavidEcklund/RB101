ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
#pick out minimum age

=begin
iterate through values
store first value in variable
if seond value is lower put that in variable
  ...
  variable

=end
low = ages.values[0]
ages.each {|k,v| low = v if v < low }
p low