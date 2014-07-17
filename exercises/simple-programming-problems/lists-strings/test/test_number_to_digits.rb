require 'p13_number_to_digits.rb'
require 'test/unit'

class TestNumberToDigits < Test::Unit::TestCase

    def test_number_to_digits
      assert_equal([1, 2, 3, 4, 5], number_to_digits(12345))
      assert_equal([9, 8, 6, 5, 3], number_to_digits(98653))
    end
end
