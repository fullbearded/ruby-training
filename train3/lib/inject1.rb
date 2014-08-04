class Array
  def inject1(initial = nil, sym = nil)
    raise 'no block given' if initial.nil? && !block_given?

    if block_given?
      initial = initial.nil? ? self.shift : initial
      self.each do |item|
        initial = yield initial, item
      end
      initial
    else
      self.each do |item|
        initial = sym.call item
      end
    end
    initial
  end
end
