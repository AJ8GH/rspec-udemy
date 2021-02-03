# doubles useful for:
# testing a class dependant on another, in isolation, even if you havent written the other class yet
# removes complexity - allows us to simplify object behaviour and methods / logic

class Actor
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    'I love you baby'
  end

  def fall_off_ladder
    'Call my agent! No way!'
  end

  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      actor.act
      actor.fall_off_ladder
      actor.act
      actor.light_on_fire
    end
  end
end

# actor = Actor.new('Brad Pitt')
# movie = Movie.new(actor)
# movie.start_shooting

describe Movie do
  let(:stuntman) { double('Mr Danger', ready?: true, act: 'I love you baby', fall_off_ladder: 'Call my agent! No way!', light_on_fire: false) }
  subject { described_class.new(stuntman) }

  describe '#start_shooting' do
    it 'expects actor to do 3 actions' do
      expect(stuntman).to receive(:ready?).at_most(3).times
      expect(stuntman).to receive(:act).twice
      expect(stuntman).to receive(:fall_off_ladder).at_least(1).times
      expect(stuntman).to receive(:light_on_fire).exactly(1).times
      subject.start_shooting
    end
  end
end

# twice or once or exactly(1).times exactly(2).times are same
# anything higher than 2 times, need to use exactly or at most
# can also use at_most(x).times etc.
# and at_least(x).times
