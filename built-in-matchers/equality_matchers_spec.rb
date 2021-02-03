describe 'equality matchers' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  describe 'eq' do
    it 'tests for value and ignores type' do
      expect(a).to eq b # will be true - type doesn't matter
      expect(2).to eq 2.0
    end
  end

  describe 'eql' do
    it 'tests for value and type' do
      expect(a).not_to eql b # true as one is float and one integer
      expect(1).not_to eql 1.0
    end
  end

  describe 'equal and be matcher' do
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }

    it 'cares about object identity' do
      expect(c).to eq d # true
      expect(c).to eql d # true - eq and eql don't care abotu object identity, only value equality
      expect(c).to equal e # true - as both variables point to the same object in memory
      expect(c).to be e  # be is alias for equal
      expect(c).not_to equal d
      expect(c).not_to be d
      expect(c).not_to equal [1, 2, 3]
    end
  end
end
