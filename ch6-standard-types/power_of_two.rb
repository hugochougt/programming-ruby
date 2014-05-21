# Self-defined Range-type object

class PowerOfTwo
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def <=>(other)
    @value <=> other.value
  end

  def succ
    PowerOfTwo.new(@value + @value)
  end

  def to_s
    @value.to_s
  end
end

p1 = PowerOfTwo.new(2)
p2 = PowerOfTwo.new(1000)

puts (p1..p2).to_a

