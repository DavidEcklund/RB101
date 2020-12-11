# Given this data structure write some code to return an array containing the colors of the fruits and the sizes of the vegetables. The sizes should be uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

# if fruit put color
# if veg put size CAPS
# arrays should be kept
# array output

# iterate through hash
# case hsh[:type]
#   fruit
#      then color << into Array
#   veg
#      then size.upcase! 

arr = []

hsh.each do |food, details|
  case details[:type]
  when "fruit"
    arr << details[:colors].map(&:capitalize)
  when "vegetable"
    arr << details[:size].upcase
  end
end

p arr == [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]