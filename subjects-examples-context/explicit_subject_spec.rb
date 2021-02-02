describe Hash do
  # subject { {a: 1, b: 2} } no name needed - subject now becomes this instance, rather than just a newly initialized one
  subject(:bob) { {a: 1, b: 2} }

  it 'has 2 key value pairs' do
    expect(subject.length).to eq 2 #can still use subject
    expect(bob.length).to eq 2
  end

  context 'works in nested examples too' do
    it 'has 2 key value pairs' do
      expect(subject.length).to eq 2 #can still use subject
      expect(bob.length).to eq 2
    end
  end
end

# difference between let and subject - subject has more flexibility
# it gives you access to shorthand syntax, not available with let
