describe 'nested hooks' do
  before(:context) { puts 'OUTER before context' } # runs once before this context

  before(:example) { puts 'OUTER before example' } # runs before all examples

  it 'does basic math' do
    expect(1 + 1).to eq 2
  end

  context 'with condition A' do
    before(:context) { puts 'INNER before context' } # runs once before all examples in this context

    before(:example) { puts 'INNER before example' } # runs before each example in this context

    it 'does some more basic math' do
      expect(5 - 3).to eq(2)
    end
  end
end

# output::
#
# nested hooks
# OUTER before context
# OUTER before example
#   `does basic math`
#
#   with condition A
# INNER before context
# OUTER before example
# INNER before example
#     `does some more basic math`
