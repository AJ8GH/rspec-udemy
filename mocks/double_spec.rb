describe 'a double' do
  it 'uses hash args to defined messages' do
    stuntman = double('Mr Danger', fall_off_ladder: 'Ouch', light_on_fire: true)
    stuntman.fall_off_ladder
    # provide key value hash to define which methods we can call on it
    expect(stuntman.fall_off_ladder).to eq 'Ouch'
    expect(stuntman.light_on_fire).to eq true
  end
end

describe 'another double' do
  it 'uses allow to define messages' do
    stuntman = double('Mr Danger')
    allow(stuntman).to receive(:fall_off_ladder).and_return('Ouch')
    allow(stuntman).to receive(:light_on_fire).and_return(true)
    # can use allow to define the methods a double can receive
    expect(stuntman.fall_off_ladder).to eq 'Ouch'
    expect(stuntman.light_on_fire).to eq true
  end
end

describe 'multiple message sytnax for doubles' do
  it 'can receive multiple messages using receive_messages' do
    stuntman = double('Mr Danger')
    allow(stuntman).to receive_messages(fall_off_ladder: 'Ouch', light_on_fire: true)
    # can use allow and receive_messages with hash to define multiple methods and return values
    expect(stuntman.fall_off_ladder).to eq 'Ouch'
    expect(stuntman.light_on_fire).to eq true
  end
end
