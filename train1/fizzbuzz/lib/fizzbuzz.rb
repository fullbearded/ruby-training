class Fizzbuzz 
  attr_accessor :input
  
  CONFIG = {0 => 'fizz', 3 => 'buzz', 5 => 'fizzbuzz'}

  def initialize(input)
    @input = input
  end

  def result
    cal
  end
  
  private

  def cal
    CONFIG[input]
  end
end
