RSpec.describe 'before and after hooks' do
  before(:example) do # runs before each example
    puts 'Before example'
  end

  after(:example) do # runs after example. can be used to change or reset objects between examples
    puts 'After example'
  end

  before(:context) do # runs once before entire context. can be used for set up
    puts 'Before context'
  end

  after(:context) do # runs once after entire context. can be used for take downs / final message
    puts 'After context'
  end

  it 'is just a random example' do
    expect(5 * 4).to eq 20
  end

  it 'is just another random example' do
    expect(3 - 2).to eq 1
  end
end

# output::
# before and after hooks
# Before context
# Before example
# After example
#
#   `is just a random example`
# Before example
# After example
#   `is just another random example`
# After context
#
# Finished in 0.00191 seconds (files took 0.11358 seconds to load)
# 2 examples, 0 failures
