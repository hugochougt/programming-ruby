# Write a function that takes a list of strings an prints them, one per line, in a rectangular frame.

def print_rectangular_frame(str_list)
  max_length = -1
  str_list.each { |str| max_length = str.length if str.length > max_length }
  side_length = max_length + 4
  
  side_length.times { print '*' }
  print "\n"

  str_list.each do |str|
    print "* "
    print str
    (max_length - str.length).times { print ' ' }
    print " *\n"
  end

  side_length.times { print '*' }
  print "\n"
end

strings = ["Hello", "World", "in", "a", "frame"]
print_rectangular_frame strings

