require_relative 'deck'

RSpec.describe Deck do

  before do
    @deck = Deck.new
  end

  describe "correct Deck instance" do

    it "should respond to deck" do
      expect(@deck).to respond_to(:deck)
    end

    it "should respond to suits" do
      expect(@deck).to respond_to(:suits)
    end

    it "should respond to ranks" do
      expect(@deck).to respond_to(:ranks)
    end

    it "should respond to shuffle" do
      expect(@deck).to respond_to(:shuffle)
    end

    it "should respond to deal_card" do
      expect(@deck).to respond_to(:deal_card)
    end

  end

  describe "inspect created deck" do

    it "should have 52 cards" do
      deck_size = @deck.deck.length
      expect(deck_size).to eq(52)
    end

    it "should deal the last card if still ordered" do
      last_card = @deck.deal_card
      expect(last_card.to_s).to eq("Ace of Diamonds")
    end

  end

end
