class Pangram
  VERSION = 1
  ALPHABET = ("a".."z").to_a

  def self.is_pangram?(string)
    string.empty? ? false : ALPHABET & sort_the_string(string) == ALPHABET
  end

  private

  def self.sort_the_string(string)
    string.downcase.gsub(/[\s+]/, "").chars.sort
  end
end
