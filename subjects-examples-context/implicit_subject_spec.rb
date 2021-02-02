describe Hash do
  # subject is already an instance of the class we are testing
  # subject == (let(:hash) { Hash.new })
  # works the same as a lazy let variable
  # creates a brand new object between examples
  # uses the same object within examples

  it 'starts empty' do
    puts subject
    puts subject.class
    expect(subject.empty?).to be true
  end
end

# output:
#
# Hash
# {}
# Hash
#   starts empty
#
#
# Finished in 0.0018 seconds (files took 0.14656 seconds to load)
# 1 example, 0 failures
