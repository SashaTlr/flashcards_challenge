require_relative '../parser.rb'
require_relative '../checker.rb'
include Parseable
include Checkable

describe Parseable do
  let(:file) {'spec/parse_test_file.txt'}
  let(:our_array) {[["Def 1", "alias"], ["Def two", "and"]]}
  describe '#parse_file' do
    it 'should create an nested array of two elements each including a string' do
      expect(Parseable.parse_file(file)).to eq (our_array)
    end
  end
end

describe Checkable do
  let(:element_1) {"hello"}
  let(:element_2) {"hi"}
  let(:element_3) {"hello"}
  let(:element_4) {"HELLO"}

  describe 'Checkable' do
    it 'matching strings should return true' do
      expect(Checkable.check_match(element_1,element_3)).to be true
    end
  end

  describe 'Checkable' do
    it 'matching strings should return false' do
      expect(Checkable.check_match(element_4,element_3)).to be false
    end
  end
end
