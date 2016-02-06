# introspection: 内省，询问关于 class 自身的问题

class Greeting
  def initialize(text)
    @text = text
  end

  def welcome
    @text
  end
end

greeting = Greeting.new 'hello'

greeting_class = greeting.class
# => Greeting

greeting_class.instance_methods(false)
# => [:welcome]

greeting.instance_variables
# => [:@text]
