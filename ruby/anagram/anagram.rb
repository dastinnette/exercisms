class Anagram

  attr_reader :word

  def initialize(word)
    @word = word
  end

  def match(incoming_words)
    incoming_words.select do |incoming_word|
      find_anagram(incoming_word)
    end
  end

  def find_anagram(incoming_word)
    letters = word.downcase.chars.sort
      if letters == incoming_word.downcase.chars.sort
        incoming_word unless incoming_word.downcase == word
      end
  end

end
