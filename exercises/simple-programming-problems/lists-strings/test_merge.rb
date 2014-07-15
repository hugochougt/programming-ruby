require_relative 'p11_merge_sorted_lists'
require 'test/unit'

class TestMerge < Test::Unit::TestCase

  def test_merge
    arr1 = [1, 8]
    arr2 = [2, 4, 6, 7]
    assert_equal([1, 2, 4, 6, 7, 8], merge(arr1, arr2))

    arr1 = [11]
    arr2 = [1, 2, 3, 4]
    assert_equal([1, 2, 3, 4, 11], merge(arr1, arr2))
  end

end

