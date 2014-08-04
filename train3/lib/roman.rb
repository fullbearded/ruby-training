class Roman
  CONFIG = {
      1000 => 'M',
      900  => 'CM',
      500  => 'D',
      400  => 'CD',
      100  => 'C',
      90   => 'XC',
      50   => 'L',
      40   => 'XL',
      10   => 'X',
      9    => 'IX',
      5    => 'V',
      4    => 'IV',
      1    => 'I'
  }
  def self.encode(number)
    result = []
    CONFIG.each_pair do |k, v|
      num = (number / k).to_i
      number %= k
      result << v * num
    end
    result.join('')
  end

end
