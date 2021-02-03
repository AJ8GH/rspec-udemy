shared_examples 'Ruby object with 3 elements' do
  it 'returns the number of items' do
    expect(subject.length).to eq 3
  end
end
# give the shared examples a string name, so we can use it later

describe Array do
  subject { [1, 2, 3] }
  include_examples 'Ruby object with 3 elements' # include the examples using include examples method and pass the string name as argument again
end

describe String do
  subject { 'abc' }
  include_examples 'Ruby object with 3 elements'
end

describe Hash do
  subject { {a: 1, b: 2, c: 3} }
  include_examples 'Ruby object with 3 elements'
end

class SausageLink
  def length
    3
  end
end

describe SausageLink do
  include_examples 'Ruby object with 3 elements'
end

# output:: all green passing tests
#
# Array
#   returns the number of items
#
# String
#   returns the number of items
#
# Hash
#   returns the number of items
#
# SausageLink
#   returns the number of items
#
# Finished in 0.00188 seconds (files took 0.1222 seconds to load)
# 4 examples, 0 failures
