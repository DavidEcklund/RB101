VALID_CHOICES = %w[rock paper scissors lizard Spock]
FIRST_LETTER_CHOICE = { 'r' => 'rock',
                        'p' => 'paper',
                        's' => 'scissors',
                        'l' => 'lizard',
                        'S' => 'Spock' }
SCORE = { player: 0, comp: 0 }
WIN = { 'rock' => %w[scissors lizard],
        'paper' => %w[rock Spock],
        'scissors' => %w[paper lizard],
        'lizard' => %w[Spock paper],
        'Spock' => %w[rock scissors] }

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  WIN[first].include?(second)
end

def increment_result(player, computer)
  if win?(player, computer)
    SCORE[:player] += 1
  elsif win?(computer, player)
    SCORE[:comp] += 1
  end
end

def display_result(player, computer)
  if win?(player, computer)
    prompt('You won!')
  elsif win?(computer, player)
    prompt('Computer won!')
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''

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

  increment_result(choice, computer_choice)
  display_result(choice, computer_choice)

  prompt("The score is You:#{SCORE[:player]}; Computer:#{SCORE[:comp]}.")
  break if SCORE[:player] == 5 || SCORE[:comp] == 5
end

prompt("The final score is You:#{SCORE[:player]}; Computer:#{SCORE[:comp]}.")
prompt('Thank you for playing. Goodbye!')
