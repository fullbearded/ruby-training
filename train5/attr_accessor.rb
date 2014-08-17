class Girl

  attr_accessor :name
  attr_writer :age
  attr_reader :gender

  def initialize
    self.gender = 'female'
  end
end
