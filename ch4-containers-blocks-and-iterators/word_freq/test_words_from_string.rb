require_relative 'words_from_string'
require 'test/unit'

class TestWordsFromString < Test::Unit::TestCase

  def test_empty_string
    assert_equal([], words_from_string(""))
    assert_equal([], words_from_string("       "))
  end

  def test_single_worl
    assert_equal(["cat"], words_from_string("cat"))
    assert_equal(["cat"], words_from_string("   cat  "))
  end

  def test_many_word
    assert_equal(["the", "cat", "sat", "on", "the", "mat"],
                 words_from_string("the cat sat on the mat"))
  end

  def test_ignores_punctuation
    assert_equal(["the", "cat's", "mat"],
                words_from_string("<the!> cat's -mat-"))
  end
end
