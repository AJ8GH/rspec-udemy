class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end


RSpec.describe Card do
  # subject (:card) { Card.new('Ace', 'Spades') }

  before(:example) { puts 'Hello' }
  before { puts 'World!' }
  # before creates brand new card objects each time, before example does the same thing - before each example

  # def card
  #   Card.new('Ace', 'Spades')
  # end
  # helper method ^^
  # can't be used for mutations in one example - will always create a new instance

let(:card) { Card.new('Ace', 'Spades') }
# let creates a variable we can used
# creates a new object each time separately - instantiates brand new card each time
# means tests are isolated and don't polute one another
# but is mutatable within example - same card object throughout each it block
# lazy loading - only creates the card when it's needed - unlike `before` which loads whether it's needed or not
let!(:card2) { Card.new('a', 'b') }
# let bang removes lazy loading and loads before each example. use sparingly, less efficient
# normal let is preferred

  it 'has a rank' do
    expect(card.rank).to eq 'Ace'
  end

  it 'has a suit' do
    expect(card.suit).to eq 'Spades'
  end

  it 'can change rank' do
    expect(card.rank).to eq 'Ace'
    card.rank = 'Queen'
    expect(card.rank).to eq 'Queen'
  end

  it 'has a custom error message' do
    comparison = 'Spades'
    expect(card.suit).to eq(comparison), "Hey, I expected #{comparison} but I got #{card.suit} instead!"
  end
  # syntax for adding custom error - second argument for to method, given as a string
end
