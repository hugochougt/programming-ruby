# Exercise 15: Reading Files

# get a filename
filename = ARGV.first

# setting up the prompt
prompt = '> '

# open a file with given filename
txt = File.open(filename)

puts "Here's your file: #{filename}"

# do the read function of txt with no parameters 
puts txt.read()
txt.close()

puts "I'll also ask you to type it again:"
print prompt
file_again = STDIN.gets.chomp()

txt_again = File.open(file_again)

puts txt_again.read()
txt_again.close()
