require_relative 'p3_contains'
require 'test/unit'

class TestContains < Test::Unit::TestCase

  def test_contains
    list = [8, 2, 'cat', -1]

    assert_equal(true, contains?(list, -1))
    assert_equal(true, contains?(list, 8))
    assert_equal(true, contains?(list, 2))
    assert_equal(true, contains?(list, 'cat'))
    assert_equal(false, contains?(list, 22))
    assert_equal(false, contains?(list, 'dog'))
  end

end
