require_relative 'card'

RSpec.describe Card do
  context "correct instance of a card" do
    before do
      suit = "Diamonds"
      rank = "7"
      @test_card = Card.new( suit, rank)
    end

    describe "instance methods" do
      it "should respond to suit" do
        expect(@test_card).to respond_to(:suit)
      end

      it "should respond to rank" do
        expect(@test_card).to respond_to(:rank)
      end

      it "should respond to show card" do
        expect(@test_card).to respond_to(:show_card)
      end
    end

    describe "atribute values equivalence" do
      it "should have a Diamond suit" do
        expect(@test_card.suit).to eq("Diamonds")
      end

      it "should have a 7 rank" do
        expect(@test_card.rank).to eq("7")
      end
    end

    describe "atribute values not equivalent" do
      it "should have a Diamond suit" do
        expect(@test_card.suit).not_to eq("Clubs")
      end

      it "should have a 7 rank" do
        expect(@test_card.rank).not_to eq("6")
      end
    end
  end

  context "incorrect instance of a card" do
    before do
      suit = "Diamond"
      rank = "11"
      @test_card_2 = Card.new(suit,rank)
    end

    describe "for incorrect suit" do
      it "should not accept an invalid suit or rank" do
        expect(@test_card_2.suit).to eq("Unknown")
        expect(@test_card_2.rank).to eq("Unknown")
      end
    end
  end

  context "Visibility of a card" do
    before do
      suit = "Diamonds"
      rank = "9"
      @test_card_2 = Card.new(suit,rank)
    end

    describe "show then hide the card" do
      it "should show a card" do
        expect(@test_card_2.to_s).to eq("9 of Diamonds")
      end

      it "should hide the card" do
        @test_card_2.show_card = false
        expect(@test_card_2.to_s).to eq("hidden")
      end

    end
  end

end
