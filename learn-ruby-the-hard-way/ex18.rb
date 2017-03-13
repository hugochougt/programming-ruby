# Exercise 18: Names, Variables, Code, Functions

# this one is like your scripts with argv
def puts_two(*args)
    arg1, arg2 = args
    puts "arg1: #{arg1}, arg2: #{arg2}"
end

def puts_two_again(arg1, arg2)
    puts "arg1: #{arg1}, arg2: #{arg2}"
end

def puts_one(arg)
    puts "arg: #{arg}"
end

def puts_none()
    puts "I got nothin'."
end

puts_two("Zed", "Shaw")
puts_two_again("Zed", "Shaw")
puts_one("Hi")
puts_none()
