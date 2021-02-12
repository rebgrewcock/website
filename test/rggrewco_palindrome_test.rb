# frozen_string_literal: true

require "test_helper"

class RggrewcoPalindromeTest < Minitest::Test

  def test_non_palindrome
    refute "apple".palindrome?
  end

  def test_literal_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RaceCar".palindrome?
  end

  def test_palindrome_with_punctuation
    assert_equal "Madam, I'm Adam.".letters, "MadamImAdam"
  end
end
