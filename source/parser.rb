module Parseable

  require 'pry'

  def self.parse_file(file)

    text_line_array = []
    def_answer_array = []

    File.foreach(file) do |line|
      text_line_array << line.chomp() if !line.chomp().empty?
    end

    text_line_array.each_slice(2) {|item| def_answer_array << [item[0],item[1]]}

    binding.pry

    return def_answer_array

  end
end

p Parseable.parse_file('flashcard_samples.txt')
