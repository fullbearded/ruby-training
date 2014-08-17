class Girl
  def self.my_attr_accessor(*args)
    self.my_attr_writer(*args)
    self.my_attr_reader(*args)
  end

  def self.my_attr_writer(*args)
    args.each do |attr|
      define_method("#{attr}=") do |arg|
        instance_variable_set("@#{attr}", arg)
      end
    end
  end
  
  def self.my_attr_reader(*args)
    args.each do |attr|
      define_method attr do
        instance_variable_get("@#{attr}")
      end
    end
  end

  my_attr_accessor :name, :type
  my_attr_writer :age
  my_attr_reader :gender

  def initialize
    @gender = 'famale'
  end
end


girl = Girl.new
girl.name = 'jerry'
p girl.name

girl.age = 1

p girl.gender
