# Modify the previous program such that only the users Alice and Bob are greeted with their names

print "Enter your name: "
name = gets.chop

if name == "Alice" || name == "Bob"
  print "Hi, #{name}.\n"
else
  print "Sorry, I don't know you. Bye!\n"
end
