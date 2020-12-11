VALID_CHOICES = %w(rock paper scissors lizard Spock)
FIRST_LETTER_CHOICE = {"r" => "rock",
                        "p" => "paper",
                        "s" => "scissors",
                        "l" => "lizard",
                        "S" => "Spock"}
                        
def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == "rock" && second == "scissors") ||
    (first == "paper" && second == "rock") ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'lizard' && second == 'Spock') ||
    (first == 'Spock' && second == 'scissors') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'paper' && second == 'Spock') ||
    (first == 'Spock' && second == 'rock')
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ""

  loop do
    prompt("Choose one by first letter (case sensitive): #{VALID_CHOICES.join(', ')}")
    ch = Kernel.gets().chomp()
    choice = FIRST_LETTER_CHOICE[ch]

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_result(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Goodbye!")
