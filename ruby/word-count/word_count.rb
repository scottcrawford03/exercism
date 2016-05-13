class Phrase
  VERSION = 1

  attr_reader :words

  def initialize(phrase)
    @phrase = phrase
    @words  = phrase.downcase.scan(/\b\w*'?+\w+/)
  end

  def word_count
    words.reduce(Hash.new(0)) do |counted_words, word|
      counted_words[word] += 1
      counted_words
    end
  end
end
