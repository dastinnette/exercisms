class Anagram

  attr_reader :word

  def initialize(word)
    @word = word
  end

  def match(incoming_words)
    incoming_words.select do |i_word|
      find_anagram(i_word)
    end
  end

  def find_anagram(i_word)
    letters = word.downcase.chars.sort
      if letters == i_word.downcase.chars.sort
        i_word unless i_word.downcase == word
      end
  end

end
