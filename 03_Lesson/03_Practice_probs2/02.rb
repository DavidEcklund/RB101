munsters_description = "The Munsters are creepy in a good way."
munsters_description.swapcase!
p munsters_description == "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."

munsters_description = "The Munsters are creepy in a good way."
munsters_description.gsub!('M', 'm')
p munsters_description == "The munsters are creepy in a good way."

munsters_description = "The Munsters are creepy in a good way."
munsters_description.downcase!
p munsters_description == "the munsters are creepy in a good way."

munsters_description = "The Munsters are creepy in a good way."
munsters_description.upcase!
p munsters_description == "THE MUNSTERS ARE CREEPY IN A GOOD WAY."