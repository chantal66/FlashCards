gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/card'
require_relative '../lib/guess'

class GuessTest < Minitest::Test
 def test_guess_is_correct

  # maybe instead of the strings I shoul pass through 
  # variables called question and answer

  card = Card.new("What is the capital of Alaska?", "juneau")
  guess = Guess.new("juneau", card)
  
  assert_instance_of Card, guess.card
  assert_equal "juneau", guess.response 
  assert true, guess.correct?
  assert_equal "Correct!", guess.feedback

  # assert guess.card
  # assert guess.response 
  # assert guess.correct?
  # assert_equal "Correct!", guess.feedback
 
 end

 def test_guess_is_wrong
  card = Card.new("Which planet is closest to the sun?", "mercury")
  guess = Guess.new("saturn", card)
    
    assert_instance_of Card, guess.card
    assert_equal "saturn", guess.response
    refute guess.correct?
    assert_equal "Incorrect.", guess.feedback

    # assert guess.card
    # assert guess.response 
    # assert guess.correct?
    # assert_equal "Correct!", guess.feedback
 end
end

