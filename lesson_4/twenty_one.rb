require 'pry'

# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

CARDS = { "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8,
          "9" => 9, "10" => 10, "jack" => 10, "queen" => 10, "king" => 10,
          "ace" => [1, 11] }.freeze
SUITS = ["hearts", "diamonds", "clubs", "spades"].freeze

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck!(new_deck)
  SUITS.each do |suit|
    CARDS.each { |card, value| new_deck["#{card} of #{suit}"] = value }
  end
end

def remove_card_from_deck!(deck, cards)
  cards.each { |card| deck.delete(card[0])}
  deck
end

def deal_hand(deck)
  deck.to_a.sample(2)
end

def calculate_total(hand)
  total = 0
  hand.each { |card|  total += card[1].to_i}
  total
end

deck = {}
initialize_deck!(deck)

player_hand = deal_hand(deck)
remove_card_from_deck!(deck, player_hand)

dealer_hand = deal_hand(deck)
remove_card_from_deck!(deck, dealer_hand)

deck.inspect

prompt "Player has #{player_hand[0][0]} and #{player_hand[1][0]}"
prompt "Player hand has a total of #{calculate_total(player_hand)}"
prompt "Dealer has #{dealer_hand[0][0]} and unknown"
