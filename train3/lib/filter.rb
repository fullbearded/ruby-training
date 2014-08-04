class Array
  def filter
    self.to_enum(:filter) unless block_given?
    arr = []
    self.each{ |x| arr << x if yield x }
    arr
  end
end

[1,2,3,4].filter { |e| e >= 2 } # => [2,3,4]
