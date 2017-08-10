require_relative 'card'

class Deck
  attr_accessor :pile, :discard_pile
  FACES = [:two, :three, :four, :five, :six, :seven, :eight, :nine, :ten, :jack, :queen, :king, :ace]

  def initialize
    @pile = populate_pile.shuffle
    @discard_pile = []
  end

  def populate_pile
    suits = [:heart, :spade, :diamond, :club]

    pile = []

    suits.each do |suit|
      FACES.each do |face|
        pile << Card.new(suit, face)
      end
    end

    pile
  end

  def deal_card
    @pile.pop
  end

  def combine
    @pile += @discard_pile
    @discard_pile = []
  end



end
