# Write a program that prints all prime numbers.
include Math

def prime?(num)
  2.upto(sqrt(num).floor).each { |i| return false if num % i == 0 }
  return true
end

prime_numbers = Enumerator.new do |yielder, num: 2|
  loop do
    yielder.yield num if prime? num
    num += 1
  end
end.lazy # Lazy Enumerater, only works in Ruby 2

loop do
  puts prime_numbers.next
end
