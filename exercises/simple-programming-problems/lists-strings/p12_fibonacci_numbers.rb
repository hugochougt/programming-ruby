# Write a function that computes the list of the first 100 Fibonacci numbers.

fib_numbers = Enumerator.new do |yielder|
  f0 = 0
  f1 = 1
  loop do
    yielder.yield f0
    f0, f1 = f1, f0 + f1
  end
end.lazy

p fib_numbers.first(100)

