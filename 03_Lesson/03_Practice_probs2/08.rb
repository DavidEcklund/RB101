advice = "Few things in life are as important as house training your pet dinosaur."
# Make the return value "Few things in life are as important as ". 
p advice.slice!(/F.*as /)

p advice == "house training your pet dinosaur."

