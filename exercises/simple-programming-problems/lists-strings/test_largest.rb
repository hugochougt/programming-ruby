require_relative 'p1_largest_element'
require 'test/unit'

class TestLargest < Test::Unit::TestCase

  def test_largest
    arr = [10, 7, 88, 63, 12, -7, 8, 3]
    assert_equal(88, largest(arr))
  end

end
