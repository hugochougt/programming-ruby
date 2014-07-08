# Write a program that prints a multiplication table for numbers up to 12.

print "    "
1.upto(12).each { |i| printf "%4d", i}
puts

(1 + 12).times { print '----'}
puts

1.upto(12).each do |i|
  printf "%2d |", i 
  1.upto(12).each { |j| printf "%4d", i * j }
  puts
end
