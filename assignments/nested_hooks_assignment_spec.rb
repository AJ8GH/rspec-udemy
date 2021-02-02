RSpec.describe 'regular hooks' do
  before(:context) do
    puts 'A'
  end

  before(:example) do
    puts 'C'
  end

  after(:example) do
    puts 'D'
  end

  after(:context) do
    puts 'B'
  end

  it 'should compare strings' do
    expect('hello').to eq('hello')
  end

  it('should compare numbers') do
    expect(3.14).to eq(3.14)
  end
end

# order of output letters:
#
# A
# C
# D
# C
# D
# B

# Given this block of code, what order will the letters be printed when the spec is run?

RSpec.describe 'multi context hooks' do
  before(:context) do
    puts 'K'
  end

  before(:example) do
    puts 'Z'
  end

  after(:example) do
    puts 'E'
  end

  it 'can multiply' do
    expect(3 * 7).to eq(21)
  end

  it 'can divide' do
    expect(40 / 8).to eq(5)
  end

  context 'with some criteria' do
    before(:context) do
      puts 'H'
    end

    before(:example) do
      puts 'B'
    end

    it 'can subtract' do
      expect(10 - 5).to eq(5)
    end

    context 'in this condition' do
      before(:example) do
        puts 'V'
      end

      it 'can add' do
        expect(8 + 6).to eq(14)
      end
    end
  end
end

# K
# Z
# E
# Z
# E
# H
# Z
# B
# E
# Z
# B
# V
# E
