require './lib/inject1'

describe 'inject1' do
  it 'should return 45 when initial is 0 && sym is :+' do
    expect((5..10).to_a.inject1(0, &:+)).to eq 45
  end

  it 'should return 45 when sym is :+' do
    expect((5..10).to_a.inject1(&:+)).to eq 45
  end

  it 'should return 151200 when initial is 1 & give block' do
    expect((5..10).to_a.inject1(1) { |product, n| product * n }).to eq 151200
  end

  it 'should return sheep when only give block' do
    longest = %w{ cat sheep bear }.inject1 do |memo, word|
      memo.length > word.length ? memo : word
    end
    expect(longest).to eq 'sheep'
  end
end
