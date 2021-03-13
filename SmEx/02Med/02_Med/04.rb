=begin
Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.


Note that balanced pairs must each start with a (, not a ).


INPUT = string
OUTPUT = boolean

RULES
true == properly balanced parentheses
false otherwise
)( is not OK (ie false)

DATA
string
array

ALGORITHM
iterate each character of string
  if ( add to array
  if ) delete one ( from array unless there is none, in which case return false

is the array empty?

=end


def balanced?(string)
  arr = []
  string.each_char do |ch|
    case ch
    when "(" then arr << ch
    when ")"
      if arr.include?("(")
         arr.delete_at(arr.index("("))
      else
         return false
      end
    end
  end
  arr.empty?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
