# Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

# algorithm
# if odd ALPH char, caps AND swap
#   if even ALPH char, downcase AND SWAP
#   else char


ALPH = (("a".."z").to_a + ("A".."Z").to_a)

def staggered_case(str)
  newstr = ""
  caps_next_alph = true
  str.chars.each do |ch|
    if ALPH.include?(ch)
      caps_next_alph ? newstr << ch.upcase : newstr << ch.downcase 
      caps_next_alph = !caps_next_alph
    elsif !(ALPH.include?(ch))
      newstr << ch 
    end
  end
  p newstr
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'