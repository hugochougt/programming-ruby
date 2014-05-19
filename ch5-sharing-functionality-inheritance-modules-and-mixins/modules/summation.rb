module Summable
  def sum
    inject(:+)
  end
end

class Array
  include Summable
end

class Range
  include Summable
end

require_relative 'vowel_finder'
class VowelFinder
  include Summable
end

p [1, 2, 4, 5, 6].sum
p ('a'..'m').sum

vf = VowelFinder.new("the quick brown fox jumped")
p vf.sum
