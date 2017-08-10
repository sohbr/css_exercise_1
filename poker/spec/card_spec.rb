require 'card'

describe Card do
  subject(:card) {Card.new("heart","Q")}

  describe "#initialize" do
    it "sets suit" do
      expect(card.suit).to eq("heart")
    end

    it "sets face" do
      expect(card.face).to eq("Q")
    end

  end
end
