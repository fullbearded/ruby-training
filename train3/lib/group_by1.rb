class Array
  def group_by1
    self.to_enum(:group_by1) unless block_given?
    hash = {}
    self.each do |x|   
      index = yield x
      hash[index] ||= []
      hash[index] << x
    end
    hash
  end
end
