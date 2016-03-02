class C
  def a_method
    'C#a_method'
  end
end

class D < C
end

obj = D.new
puts obj.a_method

class << obj
  def a_singleton_method
    'obj#a_singleton_method'
  end
end

puts obj.a_singleton_method

class C
  class << self
    def a_class_method
      'C.a_class_method'
    end
  end
end

puts C.a_class_method
puts D.a_class_method
