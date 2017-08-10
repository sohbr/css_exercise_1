require_relative 'deck'

class Hand

  attr_accessor :my_cards
  FACES = [:two, :three, :four, :five, :six, :seven, :eight, :nine, :ten, :jack, :queen, :king, :ace]

  def initialize
    @my_cards = []
  end

  def best
    if royal_flush?
      return "royal flush"
    elsif straight? && flush?
      return "straight flush"
    elsif flush?
      return "flush"
    elsif straight?
      return "straight"
    else
      return "high card"
    end
  end

  def face_index(face)
    FACES.index(face)
  end

  def cards_suits
    suits = []
    @my_cards.each do |card|
      suits << card.suit
    end
    suits
  end

  def cards_faces
    faces = []
    @my_cards.each do |card|
      faces << card.face
    end
    faces.sort_by {|face| face_index(face)}
  end

  def flush?
    cards_suits.uniq.count == 1
  end

  def straight?
    cards_faces.uniq.count == 5 &&
    face_index(cards_faces.last) - face_index(cards_faces.first) == 4
  end

  def royal_flush?
    flush? && straight? && cards_faces.all? {|face|face_index(face) >= 8}
  end

end
