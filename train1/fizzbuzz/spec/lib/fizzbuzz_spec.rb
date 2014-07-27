require 'spec_helper'

describe Fizzbuzz do
  it 'should get fizz when input is 0' do
    fizz = Fizzbuzz.new(0)
    expect(fizz.result).to eq 'fizz'
  end

  it 'should get buzz when input is 3' do
    fizz = Fizzbuzz.new(3)
    expect(fizz.result).to eq 'buzz'
  end

  it 'should get fizzbuzz when input is 5' do
    fizz = Fizzbuzz.new(5)
    expect(fizz.result).to eq 'fizzbuzz'
  end

end
