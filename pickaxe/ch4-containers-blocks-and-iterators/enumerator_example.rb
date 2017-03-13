
a = [1, 3, "cat"]
h = {dog: "canine", fox: "vulpine"}

# Create Enumerators
enum_a = a.to_enum # or its synonym, enum_for
enum_h = h.to_enum

p enum_a.next
p enum_h.next
p enum_a.next
p enum_h.next

# loop method
short_enum = [1, 2, 3].to_enum
long_enum = ('a'..'z').to_enum

loop do
  puts "#{short_enum.next} - #{long_enum.next}"
end

# each_char method will return an enumerator if you don't give it a block
result = []
"zhaqiang".each_char.with_index { |item, index| result << [item, index] }
p result


# Enumerators Are Generators and Filters

triangular_numbers = Enumerator.new do |yielder|
  number = 0
  count = 1
  loop do
    number += count
    count += 1
    yielder.yield number
  end
end

5.times { print triangular_numbers.next, " " }
puts 

p triangular_numbers.first(5)

def infinite_select(enum, &block)
  Enumerator.new do |yielder|
    enum.each do |value|
      yielder.yield(value) if block.call(value)
    end
  end
end

p infinite_select(triangular_numbers) { |val| val % 10 == 0 }.first(5)

# Lazy Enumerators in Ruby 2

def Integer.all
  Enumerator.new do |yielder, n: 0|
    loop { yielder.yield(n += 1) }
  end.lazy # <<== convert the basic generator into a lazy enumerator
end

def palindrome?(n)
  n = n.to_s
  n == n.reverse
end

p Integer.all
         .select { |i| (i % 3).zero? }
         .select { |i| palindrome?(i) }
         .first(10)
