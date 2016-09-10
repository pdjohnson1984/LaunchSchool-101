CARDS = { "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8,
          "9" => 9, "10" => 10, "jack" => 10, "queen" => 10, "king" => 10,
          "ace" => 'a' }.freeze
SUITS = ["hearts", "diamonds", "clubs", "spades"].freeze

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck!(new_deck)
  SUITS.each do |suit|
    CARDS.each { |card, value| new_deck["#{card} of #{suit}"] = value }
  end
end

def deal_hand(deck)
  cards = deck.to_a.sample(2)
  remove_card_from_deck!(deck, cards)
  cards
end

def deal_card(deck)
  card = deck.to_a.sample(1)
  remove_card_from_deck!(deck, card)
  card
end

def remove_card_from_deck!(deck, cards)
  cards.each { |card| deck.delete(card[0]) }
  deck
end

def calculate_total(hand)
  values = hand.map { |card| card[1] }

  sum = 0
  values.each do |value|
    sum += value.to_i unless value == 'a'
    sum += 11 unless value != 'a'
  end

  values.select { |value| value == 'a' }.count.times do
    sum -= 10 if sum > 21
  end

  sum
end

def display_hand(hand, player)
  all_cards = []
  hand.each { |card| all_cards << card[0] }
  all_cards[-1] = "and #{all_cards.last}" if all_cards.size > 1
  all_cards = all_cards.join(', ')
  prompt "#{player} has #{all_cards}"
end

def dealer_plays(deck, hand, score)
  loop do
    display_hand(hand, "Dealer")
    break if score > 17
    hand += deal_card(deck)
    score = calculate_total(hand)
  end
  score
end

def find_winner(player_total, dealer_total)
  if dealer_total > 21
    prompt "Dealer busts with a score of #{dealer_total}! You win!"
  elsif player_total > dealer_total
    prompt "You have #{player_total}."
    prompt "Dealer has #{dealer_total}."
    prompt "You win!"
  elsif dealer_total > player_total
    prompt "You have #{player_total}."
    prompt "Dealer has #{dealer_total}."
    prompt "Dealer wins!"
  else
    prompt "You both have #{player_total}."
    prompt "It's a draw!"
  end
end

loop do
  new_deck = {}
  initialize_deck!(new_deck)

  player_hand = deal_hand(new_deck)
  dealer_hand = deal_hand(new_deck)

  display_hand(player_hand, "Player")
  prompt "Player hand has a total of #{calculate_total(player_hand)}"
  prompt "Dealer has cards #{dealer_hand[0][0]} and unknown."

  answer = nil
  player_total = 0
  dealer_total = 0
  loop do
    prompt "hit or stay?"
    answer = gets.chomp
    break if answer == 'stay'
    player_hand.concat(deal_card(new_deck))
    display_hand(player_hand, "Player")
    player_total = calculate_total(player_hand)
    if player_total > 21
      prompt "You bust with a score of #{player_total}! Dealer wins!"
    else
      prompt "Player hand has a total of #{player_total}"
    end
    break if player_total > 21
  end

  if player_total < 22
    dealer_total = dealer_plays(new_deck, dealer_hand, dealer_total)
    find_winner(player_total, dealer_total)
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Twenty One! Good Bye!"
