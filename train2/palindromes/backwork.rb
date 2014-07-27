# this is bad method for ruby
#
# this is a monkey-patches 
class Fixnum
  def palindrome_below(binary)
    (1..self).to_a.select{ |num|
      bin = num.to_s(binary)
      bin == bin.reverse
    }
  end
end

p 10.palindrome_below(2)


