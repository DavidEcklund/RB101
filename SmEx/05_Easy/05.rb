# Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

# Algorithm
# str.char each select ^a..z else " " unless last " " join

def cleanup(str)
  alph = ("a".."z").to_a
  result = ""
  str = str.chars
  str.each do |chr|
    if alph.include?(chr)
      result.concat(chr)
    else
      chr = " "
      chr = "" if result[-1] == " "
      result.concat(chr)
    end
  end
  p result
end


p cleanup("---what's my +*& line?") == ' what s my line '