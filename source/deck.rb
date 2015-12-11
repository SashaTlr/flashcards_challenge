require_relative 'parser' # returns [['q','a'],['q2','a2'],...]


class Deck
  include Parseable
  attr_reader :deck

  def initialize(file)
    @deck = parse_file(file)
  end

  # def get_next_question
  #   @deck.pop
  # end

end

my_deck = Deck.new('flashcard_samples.txt')

p my_deck
