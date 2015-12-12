# ARGV.inspect
require_relative 'checker'
require_relative 'deck'
require_relative 'flashcards'
require_relative 'parser'
require_relative 'view'

require 'pry'

class Controller
  include Parseable
  include Checkable

  def initialize(args)
    @deck = Deck.new(args[0])
    @viewer = View.new
    run_interface
  end

  def run_interface
    @viewer.display_intro_message
    user_input = @viewer.input
    # binding.pry

    until user_input == "exit"
      if @deck.deck.empty?
        @viewer.display_empty
        break
      end
      @viewer.display_def
      current_flashcard = @deck.next_flashcard
      puts current_flashcard.question
      until user_input == current_flashcard.answer || user_input == 'exit'
        user_input = @viewer.input
        # binding.pry
        case user_input
        when "exit"
          @viewer.display_exit_message
        when current_flashcard.answer
          @viewer.display_guess(user_input)
          @viewer.display_correct_guess
        else
          @viewer.display_guess(user_input)
          @viewer.display_incorrect_guess
        end
      end
    end
  end

end

Controller.new(ARGV)

