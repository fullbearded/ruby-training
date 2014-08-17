class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def to_s
    @name
  end
end

class Array
  def sort
    self.map(&:to_s).sort!.join("\n")
  end
end