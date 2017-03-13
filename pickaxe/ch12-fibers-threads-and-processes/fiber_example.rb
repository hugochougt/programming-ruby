
words = Fiber.new do
  File.foreach("testfile.txt") do |line|
    line.scan(/\w+/) do |word|
      Fiber.yield word.downcase
    end
  end
end

counts = Hash.new(0)
while word = words.resume
  counts[word] += 1
end

counts.keys.sort.each { |k| puts "#{k}:#{counts[k]}" }

puts

# A fiber that returns successive integers divisible by 2 and not divisible by 3
twos = Fiber.new do
  num = 2
  loop do
    Fiber.yield(num) unless num % 3 == 0
    num += 2
  end
end

10.times { puts twos.resume }
