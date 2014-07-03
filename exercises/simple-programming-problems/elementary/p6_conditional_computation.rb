# Write a program that asks the user for a number n and gives him the possibility to choose between computing the sum and computing the product of 1,…,n.

print "Enter a number: "
num = gets.chop.to_i
print "Enter the operation (+ or *): "
opt = gets.chop

result = (1..num).to_a.inject(opt.to_sym)

puts "The #{opt == "+" ? "sum" : "product"} of 1...#{num} is #{result}"

