# Exercise 17: More Files

from_file, to_file = ARGV
script = $0

puts "Copying form #{from_file} to #{to_file}"

indata = File.open(from_file).read()

puts "The input file is #{indata.length} bytes long."

puts "Does the output file exist? #{File.exists? to_file}"
puts "Ready, hit RETURN to continue, CTRL-C to abort."
STDIN.gets

output = File.open(to_file, 'w')
output.write(indata)

puts "Alright, all doen."

output.close()
