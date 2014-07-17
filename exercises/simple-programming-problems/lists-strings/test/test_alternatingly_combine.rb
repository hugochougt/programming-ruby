require_relative 'p10_alternatingly_combine'
require 'test/unit'

class TestCombine < Test::Unit::TestCase

  def test_alternatingly_combine
    arr1 = ['a', 'b', 'c']
    arr2 = [1, 2, 4]
    arr3 = [9, 8, 7, 6, 'd', 'f']

    assert_equal(['a', 1, 'b', 2,'c', 4], alternatingly_combine(arr1, arr2))
    assert_equal(['a', 9, 'b', 8,'c', 7, 6, 'd', 'f'], alternatingly_combine(arr1, arr3))
    assert_equal([9, 1, 8, 2, 7, 4, 6, 'd', 'f'], alternatingly_combine(arr3, arr2))
  end

end

