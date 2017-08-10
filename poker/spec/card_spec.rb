require 'card'
require 'rspec'
require 'byebug'

describe "#initialize" do
  subject(:card) {Card.new(5, :H)}
  it "creates card object with value and suit" do
    expect(card.class).to be(Card)
  end
end
