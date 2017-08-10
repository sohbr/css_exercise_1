require 'player'

describe Player do
  subject(:brian) {Player.new("Brian")}

    describe '#initialize' do
      it 'initializes player name' do
        expect(brian.name).to eq("Brian")
      end

      it 'initializes player hand' do
        expect(brian.hand).to be_a(Hand)
      end

      it 'is an empty hand' do
        expect(brian.hand.my_cards.count).to eq(0)
      end
    end







end
