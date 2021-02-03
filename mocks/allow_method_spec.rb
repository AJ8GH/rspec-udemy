describe 'allow' do
  it 'can stub return values of methods' do
    calculator = double
    allow(calculator).to receive(:add).and_return(15)

    expect(calculator.add).to eq 15
    expect(calculator.add(1)).to eq 15
    expect(calculator.add(1, 5, 8)).to eq 15
    expect(calculator.add('Hello!')).to eq 15
  end

  it 'can stub real methods in real objects' do
    arr = [1, 2, 3]
    allow(arr).to receive(:sum) { 10 }

    expect(arr.sum).to eq 10
  end

  it 'can return multiple values in sequence' do
    arr = [:b, :c]
    allow(arr).to receive(:first).and_return(:c, :b, nil)

    expect(arr.first).to eq :c
    expect(arr.first).to eq :b
    expect(arr.first).to eq nil
  end
end

# all tests pass
