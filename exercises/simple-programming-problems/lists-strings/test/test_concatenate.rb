require 'p9_concatenate_two_lists'
require 'test/unit'

class TestConcatenate < Test::Unit::TestCase

  def test_concatenate
    lst1 = [123, 4]
    lst2 = [567, 8, 9]

    assert_equal([123, 4, 567, 8, 9], concatenate(lst1, lst2))
  end

end

