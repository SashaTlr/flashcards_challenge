require_relative 'checker'
require_relative 'deck'
require_relative 'flashcards'
require_relative 'parser'
require_relative 'view'

require 'pry'

class Controller
include Parseable
include Checkable

  def initialize
    @deck = Deck.new('flashcard_samples.txt')
    @viewer = View.new
    run_interface
  end

  def run_interface
    @viewer.display_intro_message
    input = @viewer.input.downcase
    until input == 'exit' do
      @viewer.display_def
      current_flashcard = @deck.next_flashcard
      puts current_flashcard.question
      puts
      case @viewer.input
        when current_flashcard.answer
          @viewer.display_correct_guess
        when "exit"
        else

      end
    end
    # binding.pry
  end


  def flashcards

  end
end

Controller.new
