flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# Find the index of the first name that starts with "Be"

a = nil
flintstones.each_with_index {|el, ind| a = ind if el.start_with?("Be") }
p a