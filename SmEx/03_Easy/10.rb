# Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.

def palindrome?(str)
  arr = str.chars
  loop do
    return true if arr.size <= 1
    front = arr.shift
    back = arr.pop
    next if front == back else return false
  end
end

def palindromic_number?(num)
  arr = num.to_s.chars
  checkarr = []
  "0".upto("9") {|l| checkarr << l }
  numb = true
  loop do
    break if arr.empty?
    unless checkarr.include?(arr.pop)
      numb = false
      break
    end
  end
  unless numb
    puts "Not a number!" 
    return false
  end
  palindrome?(num.to_s)
end

p palindromic_number?(34543)
p palindromic_number?("erre")
p palindromic_number?(123210)
p palindromic_number?(22)
p palindromic_number?(5)