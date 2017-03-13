# Exercise 5: More Variables And Printing

name = 'zhaqiang'
age = 24
height = 168 # CM
weight = 60 # kg
eyes = 'Black'
teeth = 'Yellow'
hair = 'Black'

puts "Let's talk about %s." % name
puts "He's %d CM tall." % height
puts "He's %d kg heavy." % weight
puts "Actually that's not too heavy."
puts "He's got %s eyes and %s hair." % [eyes, hair]
puts "His teeth are usually %s depending on the coffee." % teeth

# this line is tricky, try to get it exactly right
puts "If i add %d, %d, and %d I get %d." % [age, height, weight, age + height + weight]
