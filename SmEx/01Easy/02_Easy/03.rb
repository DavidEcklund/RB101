# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.


puts "What is the bill?"
bill = gets.chomp.to_f
puts "What is the tip percentage?"
percent = gets.chomp.to_f
percent = percent / 100

tip = (percent * bill).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{tip}."
puts "The total is $#{total}."

