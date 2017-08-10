require 'deck'

describe Deck do
  subject(:deck) { Deck.new }

  describe "#initialize" do
    it "returns an array of 52 cards" do
      expect(deck.pile.count).to eq(52)
    end

    it 'sets an array for discarding' do
      expect(deck.discard_pile).to eq([])
    end

    it "each card should be of card class" do
      expect(deck.pile[0]).to be_a(Card)
    end

    it "creates a pile of no more than 4 of each face" do
      expect(deck.pile.count {|card| card.face == :three}).to eq(4)
    end

    it "creates a pile of no more than 13 of each suit" do
      expect(deck.pile.count {|card| card.suit == :heart}).to eq(13)
    end
  end

  describe '#deal_card' do
    it 'removes top card from pile' do
      deck.deal_card
      expect(deck.pile.count).to eq(51)
    end
  end

  describe '#recombine' do
    before(:each) {
      deck.discard_pile = deck.pile.pop(30)
      deck.combine
    }

    it 'combines pile and discard pile' do
      expect(deck.pile.count).to eq(52)
    end

    it 'leaves discard pile empty' do
      expect(deck.discard_pile.count).to be(0)
    end
  end
end
