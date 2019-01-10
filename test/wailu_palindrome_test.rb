require "test_helper"

class WailuPalindromeTest < Minitest::Test

  def test_non_palindrome
    refute "apple".palindrome?
  end

  def test_literal_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "rAcEcAr".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end

  def test_letters
    assert_equal "MadamImAdam", "Madam, I'm Adam.".letters
  end

  def test_palindrome_checking_does_not_affect_string
    value = "Madam, I'm Adam."
    default = value
    value.palindrome?
    assert_equal default, value
  end
end
