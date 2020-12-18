SUIT_HASH = { "s" => "Spades", "h" => "Hearts", "d" => "Diamonds",
              "c" => "Clubs" }
RANK_HASH = { "1" => "Ace", "2" => "Two", "3" => "Three", "4" => "Four",
              "5" => "Five", "6" => "Six", "7" => "Seven", "8" => "Eight",
              "9" => "Nine", "10" => "Ten", "11" => "Jack", "12" => "Queen",
              "13" => "King" }
TARGET_SCORE = 21
STAYING_SCORE = 17

def correct_intial_values(deck)
  deck.each_key do |k|
    if deck[k] > 10
      deck[k] = 10
    elsif deck[k] == 1
      deck[k] = 11
    end
  end
  deck
end

def initialize_deck
  suits = %w(h s c d)
  rank = (1..13).to_a.map(&:to_s)
  keys = suits.product(rank).map { |sub| sub.reduce(:+) }
  deck = {}
  counter = 1
  keys.each do |key|
    deck[key] = counter
    counter += 1
    counter = 1 if counter > 13
  end
  correct_intial_values(deck)
end

def deal_one_card(deck, hand)
  key = deck.keys.sample
  hand[key] = deck.delete(key)
end

def initial_deal(deck, hand1, hand2)
  hand1 = 2.times { deal_one_card(deck, hand1) }
  hand2 = 2.times { deal_one_card(deck, hand2) }
end

def prompt(msg)
  puts "=> #{msg}"
end

def one_hand_english(hand)
  hand_arr = []
  hand.keys.each do |card|
    hand_arr << "#{RANK_HASH[card[1..-1]]} of #{SUIT_HASH[card[0]]}"
  end
  hand_arr[-1].prepend("and ")
  hand_str = case hand_arr.size
             when 2
               hand_arr.join(' ')
             when 3..100
               hand_arr.join(', ')
             end
  hand_str
end

def dealer_hand_english(hand)
  card = hand.keys[0]
  "#{RANK_HASH[card[1..-1]]} of #{SUIT_HASH[card[0]]}"
end

def display_hands(hand1, hand2)
  hand1_str = one_hand_english(hand1)
  hand2_str = dealer_hand_english(hand2)
  prompt "You have: #{hand1_str}."
  prompt "Dealer has: #{hand2_str} and #{(hand2.size) - 1} other card(s)."
end

def has_eleven_point_aces?(hand)
  hand.values.any?(11)
end

def downgrade_ace(hand)
  hand.each do |card, value|
    if (card[1..-1] == "1") && value == 11
      hand[card] = 1
      break
    end
  end
end

def calculate_hand_value(hand)
  loop do
    downgrade_ace(hand) if hand.values.sum > TARGET_SCORE && has_eleven_point_aces?(hand)
    break if hand.values.sum < 22 || !has_eleven_point_aces?(hand)
  end
  has_eleven_point_aces?(hand)
  hand.values.sum
end

def display_hands_completely(hand1, hand2)
  hand1_str = one_hand_english(hand1)
  hand2_str = one_hand_english(hand2)
  prompt "You have: #{hand1_str}."
  prompt "Dealer has: #{hand2_str}."
end

def who_won?(player_total, dealer_total, score, player_bust, dealer_bust)
  if dealer_bust
    score[0] += 1
    "Dealer is bust!"
  elsif player_bust
    score[1] += 1
    "You are bust!"
  elsif player_total > dealer_total
    score[0] += 1
    "You won!"
  elsif player_total < dealer_total
    score[1] += 1
    "Dealer won!"
  else
    "It's a tie!"
  end
end

def play_again?(score)
  puts "================="
  prompt "The score is: You -- #{score[0]}; Dealer -- #{score[1]}."
  if score.any?(5)
    prompt "Game Over."
    answer = "n"
  else
    prompt "Would you like to play again? (y or n)"
    answer = gets.chomp
  end
  answer.downcase.start_with?('y')
end

score = [0, 0] # player, dealer

loop do
  player_bust = false
  dealer_bust = false
  deck = initialize_deck
  player_hand = {}
  dealer_hand = {}
  player_total = 0
  dealer_total = 0
  initial_deal(deck, player_hand, dealer_hand)

  loop do # player's turn
    system "cls"
    system "clear"
    player_total = calculate_hand_value(player_hand)
    dealer_total = calculate_hand_value(dealer_hand)
    display_hands(player_hand, dealer_hand)
    if player_total > TARGET_SCORE
      player_bust = true
      break
    end
    prompt "Would you like to (h)it or (s)tay?"
    answer = gets.chomp
    break if answer == "s"
    unless %w(h s).include?(answer)
      prompt "That is not a valid choice. Press <ENTER>."
      gets
      next
    end
    deal_one_card(deck, player_hand)
  end

  loop do # dealer's turn
    break if player_bust
    system "cls"
    system "clear"
    dealer_total = calculate_hand_value(dealer_hand)
    display_hands(player_hand, dealer_hand)
    p dealer_total
    prompt "Press <ENTER> to see what the dealer decides..."
    gets
    if dealer_total > TARGET_SCORE
      dealer_bust = true
      break
    end
    break if dealer_total > STAYING_SCORE
    deal_one_card(deck, dealer_hand)
  end

  system "cls"
  system "clear"
  display_hands_completely(player_hand, dealer_hand)
  prompt "Your hand has a value of #{player_total}."
  prompt "The dealer's hand has a value of #{dealer_total}."
  prompt who_won?(player_total, dealer_total, score, player_bust, dealer_bust)

  break unless play_again?(score)
end

prompt "Thanks for playing Twenty-One! Goodbye!"
