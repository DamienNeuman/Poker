require 'deck'
require 'rspec'
require 'byebug'

describe "#initialize" do
  let(:card) {double("card")}
  subject(:deck) { Deck.new }

  it "creates an array of 52 cards" do
    expect(deck.cards.length).to eq(52)
  end

  it "contains 52 unique cards" do
    expect(deck.cards.uniq.length).to eq (52)
  end
end
