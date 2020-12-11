# Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

def double_consonants(str)
  alpha = ("a".."z").to_a
  cons = alpha.grep(/[^aeiou]/)
  str.chars.map! {|ch| cons.include?(ch.downcase) ? ch * 2 : ch }.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""