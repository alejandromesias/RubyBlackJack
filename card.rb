
class Card
  attr_accessor :suit, :rank, :show_card

  VALID_SUITS = ["Spades", "Hearts", "Clubs", "Diamonds"]
  VALID_RANKS = ["2", "3", "4", "5", "6", "7", "8", "9", "10",
                "Jack", "Queen", "King", "Ace"]

  def initialize(suit, rank)
    @show_card = true
    if VALID_SUITS.include?(suit) && VALID_RANKS.include?(rank)
      @suit = suit
      @rank = rank
    else
      @suit = "Unknown"
      @rank = "Unknown"
    end
  end

  def to_s
    if show_card
      "#{rank} of #{suit}"
    else
      "hidden"
    end
  end
end
