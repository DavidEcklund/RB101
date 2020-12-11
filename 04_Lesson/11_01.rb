flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# Turn this array into a hash where the names are the keys and the values are the positions in the array.

flintstones.map!.with_index { |el, ind| [el, ind] }
flintstones = flintstones.to_h
p flintstones