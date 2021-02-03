shared_context 'common' do
  before { @foods = [] }

  def some_helper_method
    5
  end

  let(:some_variable) { [1, 2, 3] }
end

# useful for reducing duplication and boiler plate code
# helps with set up

describe 'first example group' do
  include_context 'common' do

    it 'can use outside instance variables' do
      expect(@foods).to eq []
      @foods << 'Sushi'
      expect(@foods).to eq ['Sushi']
    end

    it 'can reuse instance variables across multiple examples' do
      expect(@foods).to eq []
    end

    it 'can use shared helper methods' do
      expect(some_helper_method).to eq 5
    end
  end
end

describe 'second example in different file' do
  include_context 'common'

  it 'can use share let variables' do
    expect(some_variable).to eq [1, 2, 3]
  end
end

# output::
#
# ....
#
# Finished in 0.00389 seconds (files took 0.07722 seconds to load)
# 4 examples, 0 failures
