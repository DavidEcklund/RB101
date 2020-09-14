def reverse_sentence(sentence)
  arr = sentence.split
  arr.each {|w| w = w << " " unless w == arr.first}
  new_sent = ""
  arr.reverse_each {|w| new_sent << w }
  p new_sent
end


puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'