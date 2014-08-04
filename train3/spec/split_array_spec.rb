require './lib/split_array'

describe 'split_array' do
  it 'should get three average array when split args is 3' do
    expect(split_array((1..10).to_a, 3)).to eq [[1, 4, 7, 10], [2, 5, 8], [3, 6, 9]]
  end

  it 'should get nine average array when split arg is 9' do
    array = (1..10).to_a
    expect(split_array(array, 9)).to eq [[1, 10], [2], [3], [4], [5], [6], [7], [8], [9]]
  end
end
