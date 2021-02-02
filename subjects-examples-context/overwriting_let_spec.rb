class ProgrammingLanguage
  attr_reader :name

  def initialize(name = 'Ruby')
    @name = name
  end
end
# scope:
# each let is available to all lower level examples - children and descendents
# doesn't work the other way around
# rspec first looks in current scope, then looks at each level above until the top.
# won't look down - i.e. at ancestors
# allows you to isolate variables more for tests and make tests more dry and readable.

describe ProgrammingLanguage do
  let(:language) { ProgrammingLanguage.new('Python') }

  it 'stores name of language' do
    expect(language.name).to eq 'Python'
  end

  context 'with no argument' do
    let(:language) { ProgrammingLanguage.new }

    it 'defaults to Ruby' do
      expect(language.name).to eq 'Ruby'
    end
  end
end

# output:
#
# ProgrammingLanguage
#   stores name of language
#   with no argument
#     defaults to Ruby
#
#
# Finished in 0.00183 seconds (files took 0.11931 seconds to load)
# 2 examples, 0 failures
