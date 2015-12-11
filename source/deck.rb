require_relative 'parser' # returns [['q','a'],['q2','a2'],...]
require_relative 'flashcards'
require 'pry'

class Deck

  include Parseable
  attr_reader :deck

  def initialize(file) #array
    @deck = parse_file(file)
  end

  def next_flashcard
    @deck.pop
  end

end
