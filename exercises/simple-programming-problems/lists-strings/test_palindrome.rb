require_relative 'p6_palindrome'
require 'test/unit'

class TestPalindrome < Test::Unit::TestCase

  def test_palindrome
    palindrome_str = "009RAAAR900"
    not_palindrome_str = "=_=||"
    
    assert_equal(true, palindrome?(palindrome_str))
    assert_equal(false, palindrome?(not_palindrome_str))
  end

end
