# Write your own version of the rails titleize implementation.

words = "the flintstones rock"

def titleize(str)
  str.split.map!(&:capitalize).join(' ')
end

p titleize(words) == "The Flintstones Rock"


