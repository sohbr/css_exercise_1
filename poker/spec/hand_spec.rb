require 'hand'

describe Hand do
  subject(:hand) {Hand.new}

  describe '#initialize' do
    it 'starts hand with an empty array' do
      expect(hand.my_cards.count).to eq(0)
    end
  end

  describe '#best' do
    it 'will recognize a royal flush' do
      hand.my_cards = [
        Card.new(:heart, :ten),
        Card.new(:heart, :jack),
        Card.new(:heart, :queen),
        Card.new(:heart, :king),
        Card.new(:heart, :ace)
      ]
      expect(hand.best).to eq("royal flush")
    end

    it 'will recognize high card' do
      hand.my_cards = [
        Card.new(:diamond, :three),
        Card.new(:club, :jack),
        Card.new(:spade, :eight),
        Card.new(:heart, :four),
        Card.new(:spade, :ace)
      ]
      expect(hand.best).to eq("high card")
    end
  end
end
