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
  
  deck.cards.each do |card| 

    puts "This is card number #{@current_card} out of #{deck.count}."
    puts "Question: #{card.question}"
    user_input = gets.chomp.downcase
    
    record_guess(answer)
    puts @guesses.last
  end
  puts "****** Game over! ******"
  puts "You had #{@number_correct} correct guesses out of #{deck.count} for a score of #{@percent_correct}."
 end
end 



