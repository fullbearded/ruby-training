require 'bundler'

Bundler.require(:default)


def scoreHand(arr)
  arr = arr.map(&:upcase)
  
  special_words_count = arr.select{ |word| word == 'A' }.size
  arr.reject!{|word| word == 'A'}

  sum = arr.inject(0) {|k,v| k += %w|J Q K|.include?(v) ? 10 : v.to_i; k}
  
  if special_words_count * 11 + sum < 21
    special_words_count * 11 + sum
  else
    special_words_count * 1 + sum
  end
end
