require 'p4_select_odd_items'
require 'test/unit'

class TestOdd < Test::Unit::TestCase

  def test_select_odd_items
    list = []
    assert_equal([], select_odd_items(list))

    list = [555]
    assert_equal([555], select_odd_items(list))

    list = [23, 46, 89, 1001]
    assert_equal([23, 89], select_odd_items(list))

    list = [99, 88, 77, 66, 55, 44, 33]
    assert_equal([99, 77, 55, 33], select_odd_items(list))
  end

end

