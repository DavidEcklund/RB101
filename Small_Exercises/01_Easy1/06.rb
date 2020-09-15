def reverse_words(words)
  arr = words.split
  arr.map {|w| w.reverse! if w.length > 4}
  arr.join(' ')
end

# split 
# map if > 4 reverse
# join with space

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS