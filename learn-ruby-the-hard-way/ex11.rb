# Exercise 11: Asking Questions

print "How old are you?"
age = gets.chomp()

print "How tall are you?"
height = gets.chomp()

print "How much do you weight?"
weight = gets.chomp()

puts "So, you're #{age} old, #{height} tall and #{weight} heavy."

# Difference between "get" and "gets.chomp"
puts "After entering something, you can see the 'New Line': "
a = gets
print a

puts "After entering something, you can't see the 'New Line': "
b = gets.chomp()
print b

puts "end"
