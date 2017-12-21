require_relative 'card'

class Deck

  VALID_SUITS = ["Spades", "Hearts", "Clubs", "Diamonds"]
  VALID_RANKS = ["2", "3", "4", "5", "6", "7", "8", "9", "10",
                "Jack", "Queen", "King", "Ace"]
  attr_reader :deck, :suits, :ranks
  def initialize()
    @deck = []
    @suits = VALID_SUITS
    @ranks = VALID_RANKS
    create_deck
  end

  def shuffle
    @deck.shuffle!
  end

  def deal_card
    @deck.pop
  end

  def create_deck
    suits.each do |suit|
      ranks.each do |rank|
        new_card = Card.new(suit,rank)
        deck.push(new_card)
      end
    end
  end

end
