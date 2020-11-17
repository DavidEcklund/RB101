# Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

def palindrome?(str)
  arr = str.chars
  loop do
    return true if arr.size <= 1
    front = arr.shift
    back = arr.pop
    next if front == back else return false
  end
end

def real_palindrome?(string)
  return true if palindrome?(string)
  arr = string.downcase.chars
  checkarr = []
  "a".upto("z") {|l| checkarr << l }
  "0".upto("9") {|l| checkarr << l }
  arr.select!{|ch| checkarr.include?(ch)}
  palindrome?(arr.join)
end
  

p real_palindrome?('madam')
p real_palindrome?('Madam') 
p real_palindrome?("Madam I'm Adam") 
p real_palindrome?('356653') 
p real_palindrome?('356a653') 
p real_palindrome?('123ab321')