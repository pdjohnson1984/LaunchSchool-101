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
