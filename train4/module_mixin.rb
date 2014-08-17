module ModuleMixin
  def sum
    self.inject(:+)
  end
end
class Array
  include ModuleMixin
end
p (1..10).to_a.sum
p ('A'..'Z').to_a.sum
