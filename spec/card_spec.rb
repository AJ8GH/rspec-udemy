class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end


RSpec.describe Card do
  subject (:card) { Card.new('Ace', 'Spades') }

  before(:example) { puts 'Hello' }
  before { puts 'World!' }
  # before creates brand new card objects each time, before example does the same thing - before each example
  it 'has a rank' do
    expect(card.rank).to eq 'Ace'
  end

  it 'has a suit' do
    expect(card.suit).to eq 'Spades'
  end
end
