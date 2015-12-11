require_relative 'parser.rb'
include Parseable

describe Parseable do
  let(:file) {'parse_test_file.txt'}
  let(:our_array) {[["Def 1", "alias"], ["Def two.", "and"]]}
  describe '#parse_file' do
    it 'should create an nested array of two elements each including a string' do
      expect(parse_file(file)).to eq (our_array)
    end
  end


end
