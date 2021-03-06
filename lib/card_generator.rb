
class CardGenerator

  attr_accessor :filename,
                :cards_gen

  def initialize(filename="cards.txt")
    @filename = filename
    @cards_gen = []
  end
  
  def cards_gen
    File.open(@filename).readlines.map do |line|
    question, answer = line.strip.split(",")
    Card.new(question, answer)
    end
  end
end
