RSpec.describe 'doubles' do
  it "tests the student's knowledge of the course's content" do
    db = double('Database Connection')
    allow(db).to receive_messages(connect: true, disconnect: 'Goodbye')

    expect(db.connect).to be true
    expect(db.disconnect).to eq 'Goodbye'
  end
end

RSpec.describe 'doubles' do
  it "tests the student's knowledge of the course's content" do
    fs = double('File System')
    allow(fs).to receive_messages(read: 'Romeo and Juliet', write: false)

    expect(fs.read).to eq 'Romeo and Juliet'
    expect(fs.write).to be false
  end
end
