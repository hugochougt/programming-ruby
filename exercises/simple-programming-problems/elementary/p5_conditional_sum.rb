# Modify the previous program such that only multiples of three or five are considered in the sum, e.g. 3, 5, 6, 9, 10, 12, 15 for n=17

print "Please enter a number: "
num = gets.chop.to_i

sum = (1..num).to_a.select { |i| i % 3 == 0 || i % 5 == 0}
                   .inject(:+)

puts "Sum of the numbers 1 to n that only multiples of three or five is *#{sum}*"
