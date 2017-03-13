
**Unit testing helps developers write better code.**

Ruby comes with Ryan Davis' MiniTest.

## MiniTest::Unit vs. Test::Unit

MiniTest::Unit is a partial drop-in replacement for Test::Unit.

Most of the assertioins in MiniTest mirror those in Test::Unit::TestCase. The major differences are the absence of `assert_not_raises` and `assert_not_throws` and the renaming of all the negative assertions.

Probably most significantly, MiniTest does not automatically invoke the test cases when you execute a file that contains them.

So, you have three basic options with this style of unit testing:

 *  `require 'minitest/unit'`, and use the MiniTest functionality.
 *  `require 'test/unit'`, and use MiniTest with the Test::Unit compatibility layer.
 *  You can install the `test-unit` gem and get all the original Test::Unit functionality back, along with a bunch of new assertions.

