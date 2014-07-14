require_relative 'p16_binary_search'
require 'test/unit'

class TestBinarySearch < Test::Unit::TestCase

  def test_bsearch

    arr1 = [10]
    assert_equal(0, binary_search(arr1, 10))
    assert_equal(-1, binary_search(arr1, 100))

    arr2 = [-99, -62, 0, 55, 123, 444]
    assert_equal(2, binary_search(arr2, 0))
    assert_equal(5, binary_search(arr2, 444))
    assert_equal(0, binary_search(arr2, -99))
    assert_equal(-1, binary_search(arr2, 1))

  end

end

