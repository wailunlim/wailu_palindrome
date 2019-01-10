require "wailu_palindrome/version"

class String

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  def letters
    self.split("").reject do |letter|
      letter.match(/[a-zA-Z]/).nil?
    end
      .join("")
  end

  private

  # Returns content for palindrome testing.
  def processed_content
    letters.downcase
  end
end
