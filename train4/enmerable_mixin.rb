class String
  def get_vowel
    scan(/a|e|i|o|u/)
  end
end

class VowelFinder
  include Enumerable

  def initialize(str)
    @str_arr = str.get_vowel
  end

  def each
    @str_arr.each do |item|
      yield item
    end
  end
  
end

finder = VowelFinder.new('the quick brown fox jumped')
p finder.inject(:+) # => 'euiooue'
