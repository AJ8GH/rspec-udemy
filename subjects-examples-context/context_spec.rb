RSpec.describe '#even? method' do
  context 'with even number' do
    it 'returns true' do
      expect(2.even?).to be true
    end
  end

  context 'with odd number' do
    it 'returns false' do
      expect(1.even?).to be false
    end
  end
end

# describes - or preferrably contexts - should be used to group examples and extract any logic to a higher level describe block
# it statements should be simple and basic as possible
# if you are using logic in it statements 'if ... etc.' then it's a good sign shoudl be using a context block
# goal is for tests and terminal output to be elegant as possible
