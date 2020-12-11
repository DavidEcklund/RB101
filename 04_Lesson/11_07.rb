# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"
hash = Hash.new(0)
statement.each_char {|ch| hash[ch] += 1}
p hash
