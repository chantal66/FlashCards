class Round
 
 attr_accessor :deck, 
               :guesses, 
               :current_card, 
               :record_guess,
               :number_correct,
               :count,
               :result,
               :feedback

 def initialize(deck)
  @deck = deck
  @guesses = []
  @current_card = 0
  @number_correct = 0
 end

 def current_card
  deck.cards[@current_card]
 end

 def record_guess(answer)
   @guesses << Guess.new(answer, current_card)
   result = @guesses.last
   if result.correct?
     @number_correct += 1
     @guesses == "Correct!"
   else
     @guesses == "Incorrect!" 
   end 
  @current_card +=1
  result
 end
 
 def percent_correct
  @number_correct.to_f / deck.count * 100
 end
 def start
 
  puts "Welcome! You're playing with #{deck.count} cards."
  puts "-------------------------------------------------"

 end
end 



