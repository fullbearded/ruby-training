require 'spec_helper'

describe 'test' do
  it 'should be 11 when input is [A]' do
    expect(scoreHand(%w|A|)).to eq 11
  end
  
  it 'should be 21 when input is [A, j]' do
    expect(scoreHand(%w|A J|)).to eq 11
  end

  it 'should be 12 when input is [A, 10, A]' do
    expect(scoreHand(%w|A 10 A|)).to eq 12
  end

  it 'should be 15 when input is [5 3 7]' do
    expect(scoreHand(%w|5 3 7|)).to eq 15
  end

  it 'should be 25 when input is [5 4 3 2 A K]' do
    expect(scoreHand(%w|5 4 3 2 A k|)).to eq 25
  end

end
