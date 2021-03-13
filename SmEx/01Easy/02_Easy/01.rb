# Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

# Example Output

# Teddy is 69 years old!

def teddy
  puts "What is your name?"
  name = gets.chomp
  name = "Teddy" if name.empty?
  r = (rand(180) + 20)
  puts "#{name} is #{r} years old!"
end

teddy
