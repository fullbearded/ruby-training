require './lib/filter'

describe 'filter' do
  it 'should retrun [2,3,4] when filter item >=2' do
    expect([1,2,3,4].filter{|e| e >= 2}).to eq [2,3,4]
  end

  it 'should return [2, 4, 6, 8, 10] when filter item % 2 == 0' do
    expect((1..10).to_a.filter{|e| e % 2 == 0}).to eq [2, 4, 6, 8, 10]
  end
end
