# Write a program that asks the user for a number n and prints the sum of the numbers 1 to n

print "Please enter a number: "
num = gets.chop.to_i

sum = (1..num).to_a.inject(:+)

puts "Sum of the numbers 1 to n is *#{sum}*"
