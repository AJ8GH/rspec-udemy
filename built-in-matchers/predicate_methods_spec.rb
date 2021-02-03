describe 'predicate matchers' do
  it 'can be tested by Ruby method' do
    expect(2.even?).to be true
  end

  it 'can be tested with preditate matchers' do
    expect(2).to be_even
    expect(1).to be_odd
    expect(0).to be_zero
    expect([]).to be_empty
  end
end

describe 0 do
  it { is_expected.to be_zero }
end

# works with any predicate method - be_method (without ?)

# Output::
#
# ...
#
# Finished in 0.00658 seconds (files took 0.10409 seconds to load)
# 3 examples, 0 failures
