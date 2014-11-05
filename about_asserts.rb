#!/usr/bin/env ruby
# -*- ruby -*-

require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutAsserts < Neo::Koan

  # We shall contemplate truth by testing reality, via asserts.
  def test_assert_truth
    assert true                # This should be true
            # assert is a ruby method and tests if something is true. If above if assert false then it fails
  end

  # Enlightenment may be more easily achieved with appropriate
  # messages.
  def test_assert_with_message
    assert true, "This should be true -- Please fix this"
  end #an assert can return a message if the test fails

  # To understand reality, we must compare our expectations against
  # reality.
  def test_assert_equality
    expected_value = 2
    actual_value = 1 + 1

    assert expected_value == actual_value
  end #an actual conditional operator and returns true if the same

  # Some ways of asserting equality are better than others.
  def test_a_better_way_of_asserting_equality
    expected_value = 2
    actual_value = 1 + 1

    assert_equal expected_value, actual_value
  end #assert_equal behaves differently depending on what object is called it is more reliable then assert with ==
    #because treats everything that isn't nil or false as true.

  # Sometimes we will ask you to fill in the values
  def test_fill_in_values
    assert_equal 2, 1 + 1
  end #assert_equal takes in parameters expected, actual, failure_message
end
