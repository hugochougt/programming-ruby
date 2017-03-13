# Exercise 16: Reading And Writing Files

filename = ARGV.first
script = $0

puts "We're going to erase #{filename}."
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

print "? "
STDIN.gets

puts "Opening the file..."
target = File.open(filename, 'w')

puts "Truncating the file. Goodbye!"
target.truncate(target.size)

puts "Now I'm going to ask you for three linew."

print "line 1: "; line1 = STDIN.gets
print "line 2: "; line2 = STDIN.gets
print "line 3: "; line3 = STDIN.gets

puts "I'm going to write thest to the file."

target.write(line1)
target.write(line2)
target.write(line3)

puts "And finally, we close it."
target.close()
