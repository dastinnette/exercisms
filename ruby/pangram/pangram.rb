class Pangram
  VERSION = 1

  def self.is_pangram?(str)
    alphabet = ('a'..'z')
    alphabet.all? do |letter|
      str.downcase.chars.include?(letter)
    end
  end
end
