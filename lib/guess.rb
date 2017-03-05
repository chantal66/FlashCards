class Guess
 
 attr_accessor :card, :guess, :feedback, :correct
 
 def initialize(guess, card)
  @card = card
  @guess = guess
 end
 
 
 def response
   @guess
 end
 def correct?
    #return false if @guess.empty?
    @guess == @card.answer
 end   

  def feedback
      # correct? ? "Correct!" : "Incorrect. The answer is: #{@card.answer}" 
      #@guess == card.answer ? "Correct!" : "Incorrect. The answer is: #{@card.answer}"
      if correct?
      "Correct!"
    else
      "Incorrect."
    end
  end
end