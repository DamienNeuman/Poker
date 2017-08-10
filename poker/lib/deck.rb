require_relative 'card'

class Deck

  SUITS = ["HEARTS", "CLUBS", "DIAMONDS", "SPADES"]
  VALUES = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]

  def initialize
    @deck = build_deck.shuffle
  end

  def build_deck
    deck = []
    VALUES.each do |value|
      SUITS.each do |suit|
        deck << Card.new(value, suit)
      end
    end
    deck
  end

  def cards
    @deck
  end
end
