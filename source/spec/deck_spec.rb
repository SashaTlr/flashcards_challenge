require_relative '../deck'

describe Deck do

  let(:my_deck) {Deck.new('flashcard_samples.txt')}

  it 'is a proper class that can be initialized' do
    expect{Deck.new('flashcard_samples.txt')}.to_not raise_error
  end

  describe '#deck' do
    it 'is an object' do
      expect(my_deck).to be_an Object
    end
  end

  # describe '#answer' do
  #   it 'is readable' do
  #     expect(my_card.answer).to eq('answer')
  #   end
  # end

end

