# Palindromic Strings (Part 1)
# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.
# Examples:
# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

# str > arr; arr first last, step toward center;

def palindrome?(str)
  arr = str.chars
  loop do
    return true if arr.size <= 1
    front = arr.shift
    back = arr.pop
    next if front == back else return false
  end
end

p palindrome?('madam')
p palindrome?('Madam') 
p palindrome?("madam i'm adam") 
p palindrome?('356653') 