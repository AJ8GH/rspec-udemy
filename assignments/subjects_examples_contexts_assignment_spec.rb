# Questions for this assignment
# By default, what will subject equal?
# How do you define a custom subject? Provide a code example.
# How does the described_class helper method work? What is the advantage of using it over writing the class name out?
# Write an RSpec test for an array with 2 elements.
# Declare the subject to be [1, 2].
# Write an example that uses expect(subject) to test whether the array is equal to [1, 2].
# Write an example that uses the one-liner is_expected syntax.
# Which do you prefer?
# What's the difference between include_examples and include_context?

# 1. A new instance of the class being tested
# 2. `subject(:my_subject) { [1, 2, 3] }`
# 3. `described_class` represents whichever class is being tested. it is more maintainable as it doesn't need to be changed if a class is renamed.
# 4.

describe Array do
  subject(:array) { [1, 2] }

  context 'classic syntax' do
    it 'has length 2' do
      expect(subject.length).to eq 2
    end
  end

  context 'shorthand' do
    subject { array.length }
    it { is_expected.to eq 2 }
  end
end

# include examples is for reusing examples (tests) across multiple objects / methods with the same outcome
# include context is for reusing let variables, subjects, helper methods etc. and reducing duplication and boiler plate code
