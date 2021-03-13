def switcheroo(num)
  switches = 1.upto(num).with_object([]) {|n, arr| arr << false } # creating switches currently "false" i.e. off
  1.upto(num) do |how_often|
    switches.map!.with_index { |light, idx| (idx+1) % how_often == 0 ? !light : light }
  end
  switches.each_with_object([]).with_index {|(on,result), index| result << index+1 if on }
end

p switcheroo(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]