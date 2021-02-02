class King
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

describe King do
  subject { King.new('Adam') }
  let(:louis) { King.new('Louis') }
end

# what if King changes name to Royal?
# we can use described_class instead - now class can change name nad it doesn't matter.

describe King do
  subject { described_class.new('Adam') }
  let(:louis) { described_class.new('Louis') }

  it 'represents a great person' do
    expect(subject.name).to eq 'Adam'
  end
end
