# for i in 1..99 do
#   puts i if i.odd?
# end

1.upto(99) {|i| puts i if i.remainder(2) == 1}
