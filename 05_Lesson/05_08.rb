# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |k, arr|
  arr.each do |str|
    str.chars.each {|ch| puts ch if "aeiou".include?(ch)}
  end
end
