
square = "some shape"

sum = 0
[1, 2, 3, 4].each do |value|
  square = value * value
  sum += square
end

puts sum    # => 30
puts square # => 16 BOOM!

# To fix preceding BOOM, you can define block-local variables by putting them
# after a semicolon(;) in the block's parameter list.

square = "another shape"

sum = 0
[1, 2, 3, 4].each do |value; square|
  square = value * value
  sum += square
end

puts sum    # => 30
puts square # => another shape

def two_times
  yield
  yield
end
two_times { puts "Hi, Ruby." }

def fib_up_to(max)
  i1, i2 = 1, 1     # parallel assignment (i1 = 1, i2 = 1)
  while i1 <= max
    yield i1
    i1, i2 = i2, i1 + i2
  end
end
fib_up_to(1000) { |f| print f, " " }
puts

# collect iterator, aka map
p ['H', 'A', 'L'].collect { |x| x.succ }
p ['H', 'A', 'L'].map { |x| x.succ }     # => ["I", "B", "M"]

# Use with_index to keep track of how many times you've been through the block
f = File.open("testfile.txt")
f.each.with_index do |line, index|
  puts "Line #{index}: #{line}"
end
f.close

# produces: (notice that index starts with 0)
# Line 0: Line one
# Line 1: Line #2
# Line 2: Line 三
# Line 3: And so on...

# One more useful iterator: the (somewhat obscurely named) inject method
puts [1, 2, 3, 4].inject(0) { |sum, element| sum + element }
# => 10

puts [1, 3, 5, 7].inject(1) { |product, element| product * element }
# => 105

# Same with preceding inject method examples:
# simply pass the name of the method you want to apply to successive elements
# of the collection.
puts [1, 2, 3, 4].inject(:+)
puts [1, 3, 5, 7].inject(:*)
