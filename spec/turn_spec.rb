require 'rspec'
require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'

card1 = Card.new(:heart, 'Jack', 11)
card2 = Card.new(:heart, '10', 10)
card3 = Card.new(:heart, '9', 9)
card4 = Card.new(:diamond, 'Jack', 11)
card5 = Card.new(:heart, '8', 8)
card6 = Card.new(:diamond, 'Queen', 12)
card7 = Card.new(:heart, '3', 3)
card8 = Card.new(:diamond, '2', 2)

cards1 = [card1, card2, card5, card8]
cards2 = [card3, card4, card6, card7]

deck1 = Deck.new(cards1)
deck2 = Deck.new(cards2)

player1 = Player.new('Megan', deck1)
player2 = Player.new('Aurora', deck2)

turn = Turn.new(player1, player2)

RSpec.describe Turn do
  it 'creates new turn' do
    expect(turn).to be_an_instance_of(Turn)
  end

  it 'can read player1' do
    expect(turn.player1).to eq(player1)
  end
  # #can read decks
  # it '------------' do
  #   expect(turn.spoils_of_war).to eq(cards_won)
  # end
  #
  # it 'has spoils of war method' do
  #   expect(turn.spoils_of_war).to eq(cards_won)
  # end

end

# require 'pry'; binding.pry
# 0