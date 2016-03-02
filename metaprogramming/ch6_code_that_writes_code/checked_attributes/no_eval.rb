require 'minitest/autorun'

class Person

end

def add_checked_attributes(klass, attr)
  klass.class_eval do
    define_method "#{attr}=" do |val|
      raise 'Invalid attributes' unless val
      instance_variable_set "@#{attr}", val
    end

    define_method attr do
      instance_variable_get "@#{attr}"
    end
  end
end

class TestCheckedAttributes < Minitest::Test
  def setup
    add_checked_attributes Person, :age
    @bob = Person.new
  end

  def test_accepts_valid_values
    @bob.age = 20
    assert_equal 20, @bob.age
  end

  def test_refuses_nil_values
    assert_raises RuntimeError, 'Invalid attributes' do
      @bob.age = nil
    end
  end

  def test_refuses_false_values
    assert_raises RuntimeError, 'Invalid attributes' do
      @bob.age = false
    end
  end
end
