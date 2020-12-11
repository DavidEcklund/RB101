vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]


def count_occurrences(arr)
  count = Hash.new(0)
  arr.each do |ele|
    count[ele.to_sym] += 1
  end
  count.each {|k,v| puts k.to_s + " => " + v.to_s}
end

count_occurrences(vehicles)

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2