
class Parent
  def say_hello
    puts "Hello from #{self}"
  end
end

Parent.new.say_hello

class Child < Parent

end

Child.new.say_hello

p Child.superclass  # => Parent
p Parent.superclass # => Object
p Object.superclass # => BasicObject
