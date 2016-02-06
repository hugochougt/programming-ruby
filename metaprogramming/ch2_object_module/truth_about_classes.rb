class MyClass; end
obj1 = MyClass.new
obj2 = MyClass.new

obj1.class
# => MyClass
MyClass.class
# => Class
Class.class
# => Class
Class.superclass
# => Module
Module.superclass
# => Object
