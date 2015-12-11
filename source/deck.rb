require_relative 'parser' # returns [['q','a'],['q2','a2'],...]
require_relative 'flashcards'
require 'pry'

class Deck
  attr_reader :deck

  def initialize(file) #array
    @deck = []
    full_deck = Parseable.parse_file(file)
    full_deck.each do |flashcard|
      @deck << Flashcard.new(flashcard[0],flashcard[1])
    end
  end

  def next_flashcard
    @deck.pop
  end

end
