# frozen_string_literal: true

require_relative "rggrewco_palindrome/version"

module RggrewcoPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      self.to_s.scan(/[a-z\d]/i).join.downcase
    end
end

class String
  include RggrewcoPalindrome
end

class Integer
  include RggrewcoPalindrome
end
