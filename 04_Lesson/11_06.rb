# Amend this array so that the names are all shortened to just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! {|v| v = v[0,3]}
p flintstones