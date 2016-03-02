require 'minitest/autorun'

module CheckedAttributes
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def attr_checked(attr, &validation)
      define_method "#{attr}=" do |val|
        raise 'Invalid attributes' unless validation.call(val)
        instance_variable_set "@#{attr}", val
      end

      define_method attr do
        instance_variable_get "@#{attr}"
      end
    end
  end
end

class Person
  include CheckedAttributes

  attr_checked :age do |val|
    val >= 18
  end
end

class TestCheckedAttributes < Minitest::Test
  def setup
    @bob = Person.new
  end

  def test_accepts_valid_values
    @bob.age = 20
    assert_equal 20, @bob.age
  end

  def test_refuses_nil_values
    assert_raises RuntimeError, 'Invalid attributes' do
      @bob.age = 14
    end
  end
end
