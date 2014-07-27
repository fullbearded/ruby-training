class HashSplit
  attr_accessor :options, :args

  def initialize(options, *args)
    @options = options
    @args = args
  end

  def by_key
    keys = @options.keys
    total = keys.size

    arr = []
    last_index = 0
    args.each do |_arg|
      index = keys.index(_arg)
      raise 'not found' if index.nil?
      arr << format_arr(keys[last_index...index])
      last_index = index
    end
    arr << format_arr(keys[last_index..total])
    arr.reject{|v| v.empty?}
  end
  
  private

  def format_arr(arr)
    arr.inject({}) {|hash, key| hash[key] = @options[key]; hash }
  end
end
