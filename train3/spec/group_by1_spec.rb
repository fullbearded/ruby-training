require './lib/group_by1'

describe 'group_by1' do
  it 'should return a hash group by the condition' do
    expect((1..6).to_a.group_by1 { |i| i % 3 }).to eq({0 => [3, 6], 1 => [1, 4], 2 => [2, 5]})
  end
end
