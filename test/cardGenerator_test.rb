gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/card'
require_relative '../lib/guess'
require_relative '../lib/deck'
require_relative '../lib/round'
require_relative '../lib/card_generator'

class CardGeneratorTest < Minitest::Test

  def test_can_app_read_file
    filename = "cards.txt"
    card_generator = CardGenerator.new(filename).cards_gen
    assert File.exist?(filename)

  end

  def test_are_cards_stored_in_array
      
      filename = "cards.txt"
      card_generator = CardGenerator.new(filename).cards_gen
      assert card_generator.is_a? Array
  end

  def test_can_app_count_14_cards
    
    filename = "cards.txt"
    card_generator = CardGenerator.new(filename).cards_gen
    assert_equal 14, card_generator.count
  end
  def test_app_is_giving_correct_answer
     
      filename = "cards.txt"
      card_generator = CardGenerator.new(filename).cards_gen
      assert_equal "Who played Neo in The Matrix?", card_generator[2].question
    end

  
end