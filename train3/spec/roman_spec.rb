require './lib/roman'

describe 'Roman' do
  it 'should return MCCXXXIV when the number is 1234' do
    expect(Roman.encode(1234)).to eq 'MCCXXXIV'
  end

  it 'should return MMXIV when the number is 2014' do
    expect(Roman.encode(2014)).to eq 'MMXIV'
  end

end