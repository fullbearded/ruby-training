require 'spec_helper'

describe HashSplit do
  it 'should be splited three hash, every hash include two items' do
    hash = { a: 1, b: 2, c: 3, d: 4, e: 5, f: 6 }
    expect(HashSplit.new(hash, :c, :e).by_key).to eq [ {:a=>1, :b=>2}, {:c=>3, :d=>4}, {:e=>5, :f=>6} ]
  end

  it 'should be splited three hash, first hash include one item..' do
    hash = { a: 1, b: 2, c: 3, d: 4, e: 5, f: 6 }
    expect(HashSplit.new(hash, :b, :f).by_key).to eq  [ {:a=>1}, {:b=>2, :c=>3, :d=>4, :e=>5}, {:f=>6} ]
  end

  it 'should be splited two hash' do
    hash = { 'a'=>1, 'b'=>2, 'c'=>3, 'd'=>4, 'e'=>5, 'f'=>6 }
    expect(HashSplit.new(hash, 'd').by_key).to eq [ {"a"=>1, "b"=>2, "c"=>3}, {"d"=>4, "e"=>5, "f"=>6} ]
  end
 
  it 'should return himself if there are any empty hash after splitting' do
    hash = { a: 1, b: 2 }
    expect(HashSplit.new(hash, :a).by_key).to eq [ {:a => 1, :b => 2} ]
  end

  it 'should raise an exception' do
    hash = { a: 1, b: 2, c: 3, d: 4, e: 5, f: 6 }
    expect{ HashSplit.new(hash, 'b').by_key }.to raise_error
  end

  it 'should return six hash when the args have six key' do
    hash = { a: 1, b: 2, c: 3, d: 4, e: 5, f: 6 }
    expect(HashSplit.new(hash, :a, :b, :c, :d, :e, :f).by_key).to eq [ {:a=>1}, {:b=>2}, {:c=>3}, {:d=>4}, {:e=>5}, {:f=>6} ]
  end

end
