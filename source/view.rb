class View

  def input
    gets.chomp()
  end

  def display_intro_message

    puts "Welcome to Ruby Flash Cards. To play, just enter the correct term for each definition.  Ready?  Go!"
    puts "Hit enter to start or exit to quit at any time"
  end

  def display_def
    puts "Definition"
  end

  def display_incorrect_guess
    puts "Incorrect!  Try again."
    puts
  end

  def display_guess
    "Guess: "
  end

  def display(output)
    puts output
  end

  def display_correct_guess
    puts "Correct!"
  end

end
