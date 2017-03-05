require_relative './lib/card'
require_relative './lib/guess'
require_relative './lib/deck'
require_relative './lib/round'
require_relative './lib/card_generator.rb'

puts "enter a card file to use. (recomendation: cards.txt) 😃"
user_cards = gets.chomp

while File.exist?(user_cards) == false do
  case user_cards
  when ""
    cards = CardGenerator.new.cards_gen
    deck = Deck.new(cards)
    round = Round.new(deck)
    round.start
    round.end 
    break
  else
  puts "file does not exist. please enter a card file to use."
  user_cards = gets.chomp
  end
end
cards = CardGenerator.new(user_cards).cards_gen
deck = Deck.new(cards)
round = Round.new(deck)
round.start
round.end 




