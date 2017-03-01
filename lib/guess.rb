class Guess
 
 attr_accessor :card, :guess
 
 def initialize(guess, card)
  @card = card
  @guess = guess
  
 end
 
 def response
   @guess
 end
 def correct?
  return false if @guess.empty?
  @guess.include? @card.answer
  
 end
 def feedback
   correct? ? "Correct!" : "Incorrect. The answer is: #{@card.answer}" 
 end


end