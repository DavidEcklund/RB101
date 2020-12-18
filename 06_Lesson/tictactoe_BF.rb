require "pry"

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]] # diagonals
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WHO_STARTS = "player"
SCORE = {comp: 0, player: 0}

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'cls'
  system 'clear'
  puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts "The score is now: Player #{SCORE[:player]}, Computer #{SCORE[:comp]} "
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(num_arr, joiner = ', ', end_joiner = 'or')
  str = if num_arr.size > 2
          last_two = num_arr.slice!(-2,2)
          num_arr = num_arr.join(joiner)
          last_two = "#{joiner}#{last_two[0]}#{joiner}#{end_joiner} #{last_two[1]}"
          num_arr + last_two
        else
          num_arr.join(" #{end_joiner} ")
        end
  str
end

def player_place_piece(brd)
  square = ""
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def block_threat(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2
      brd.each do | k, v |
        if line.include?(k) && if brd[k] == INITIAL_MARKER
          brd[k] = COMPUTER_MARKER
          puts "I block!"
          gets
          return
        end
      end
      end
    end
  end
end

def immediate_threat?(brd)
  WINNING_LINES.each do |line|
    return true if brd.values_at(*line).count(PLAYER_MARKER) == 2 && brd.values_at(*line).count(INITIAL_MARKER) == 1
  end
  false
end

def goal_strike(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(COMPUTER_MARKER) == 2
      brd.each do | k, v |
        if line.include?(k) && if brd[k] == INITIAL_MARKER
          brd[k] = COMPUTER_MARKER
          puts "Haha"
          gets
          return
        end
      end
      end
    end
  end
end

def within_striking_distance?(brd)
  WINNING_LINES.each do |line|
    return true if brd.values_at(*line).count(COMPUTER_MARKER) == 2 && brd.values_at(*line).count(INITIAL_MARKER) == 1
  end
  false
end

def computer_places_piece(brd)
  if within_striking_distance?(brd)
    goal_strike(brd)
  elsif immediate_threat?(brd)
    block_threat(brd)
  elsif brd[5] == INITIAL_MARKER
    brd[5] = COMPUTER_MARKER
  else
    square = empty_squares(brd).sample
    brd[square] = COMPUTER_MARKER
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def alternate_player(current_player)
  current_player == "player" ? current_player = "computer" : current_player = "player"
end

def place_piece!(board, current_player)
  current_player == "player" ? player_place_piece(board) : computer_places_piece(board)
end

def choose_who_starts(current_player)
  loop do
    prompt "Press 1 to go first, 2 to go second."
    choice = gets.chomp.to_i
    if choice == 1
      current_player = "player"
    elsif choice == 2
      current_player = "computer"
    else
      prompt "That's not a valid choice."
    end
    break if [1,2].include?(choice)
  end
end

loop do
  SCORE[:player] = 0
  SCORE[:comp] = 0

  loop do
    board = initialize_board
    WHO_STARTS == "choose"? current_player = choose_who_starts(current_player) : current_player = WHO_STARTS

    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)

    end

    display_board(board)
    
    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
      case detect_winner(board)
      when 'Player'
        SCORE[:player] += 1
      when 'Computer'
        SCORE[:comp] += 1
      end
    else
      prompt "It's a tie!"
    end
    
    
    break if SCORE.values.any?(5)
  
    prompt "Please press ENTER to continue."
    gets
  end

  if SCORE[:player] == 5
    prompt "You won the 5 round set!"
  elsif SCORE[:comp] == 5
    prompt "Computer won the 5 round set!"
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Goodbye"

