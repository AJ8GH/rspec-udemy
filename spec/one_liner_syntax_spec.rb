describe 'shorthand syntax' do
  subject { 5 }

  context 'with classic syntax' do
    it 'should eq 5' do
      expect(subject).to eq 5
    end
  end

  context 'with shorthand syntax' do
    it { is_expected.to eq 5 }
  end
end
