# require 'rspec'
require_relative './lib/card'
require_relative './lib/deck'
require_relative './lib/player'
require_relative './lib/turn'
require_relative './lib/game'
require 'pry'

standard_deck = [
  card1 = Card.new(:diamond, '2', 2),
  card2 = Card.new(:diamond, '3', 3),
  card3 = Card.new(:diamond, '4', 4),
  card4 = Card.new(:diamond, '5', 5),
  card5 = Card.new(:diamond, '6', 6),
  card6 = Card.new(:diamond, '7', 7),
  card7 = Card.new(:diamond, '8', 8),
  card8 = Card.new(:diamond, '9', 9),
  card9 = Card.new(:diamond, '10', 10),
  card10 = Card.new(:diamond, 'Jack', 11),
  card11 = Card.new(:diamond, 'Queen', 12),
  card12 = Card.new(:diamond, 'King', 13),
  card13 = Card.new(:diamond, 'Ace', 14),
  card14 = Card.new(:heart, '2', 2),
  card15 = Card.new(:heart, '3', 3),
  card16 = Card.new(:heart, '4', 4),
  card17 = Card.new(:heart, '5', 5),
  card18 = Card.new(:heart, '6', 6),
  card19 = Card.new(:heart, '7', 7),
  card20 = Card.new(:heart, '8', 8),
  card21 = Card.new(:heart, '9', 9),
  card22 = Card.new(:heart, '10', 10),
  card23 = Card.new(:heart, 'Jack', 11),
  card24 = Card.new(:heart, 'Queen', 12),
  card25 = Card.new(:heart, 'King', 13),
  card26 = Card.new(:heart, 'Ace', 14),
  card27 = Card.new(:spade, '2', 2),
  card28 = Card.new(:spade, '3', 3),
  card29 = Card.new(:spade, '4', 4),
  card30 = Card.new(:spade, '5', 5),
  card31 = Card.new(:spade, '6', 6),
  card32 = Card.new(:spade, '7', 7),
  card33 = Card.new(:spade, '8', 8),
  card34 = Card.new(:spade, '9', 9),
  card35 = Card.new(:spade, '10', 10),
  card36 = Card.new(:spade, 'Jack', 11),
  card37 = Card.new(:spade, 'Queen', 12),
  card38 = Card.new(:spade, 'King', 13),
  card39 = Card.new(:spade, 'Ace', 14),
  card40 = Card.new(:club, '2', 2),
  card41 = Card.new(:club, '3', 3),
  card42 = Card.new(:club, '4', 4),
  card43 = Card.new(:club, '5', 5),
  card44 = Card.new(:club, '6', 6),
  card45 = Card.new(:club, '7', 7),
  card46 = Card.new(:club, '8', 8),
  card47 = Card.new(:club, '9', 9),
  card48 = Card.new(:club, '10', 10),
  card49 = Card.new(:club, 'Jack', 11),
  card50 = Card.new(:club, 'Queen', 12),
  card51 = Card.new(:club, 'King', 13),
  card52 = Card.new(:club, 'Ace', 14)]

cards1 = standard_deck.sample(26)
cards2 = (standard_deck - cards1).shuffle!()

deck1 = Deck.new(cards1)
deck2 = Deck.new(cards2)

player1 = Player.new('Megan', deck1)
player2 = Player.new('Aurora', deck2)

puts "Welcome to War! (or Peace) This game will be played with #{standard_deck.count} cards."
puts "The players today are #{player1.name} and #{player2.name}."
puts "Type 'GO' to start the game!"
puts "--------------------------------------------------------------------------------------"

#go = gets.chomp
go = 'GO'
if go == 'GO' || go == 'go'
  new_game = Game.new(player1,player2)
  new_game.play_game
else go != 'GO' || go != 'go'
  puts 'Try again...'
end
