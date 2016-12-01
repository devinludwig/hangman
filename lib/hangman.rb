class Hangman
  @@letters = []

  define_method(:initialize) do |word|
    @word = word
    @letters = word.split('')
  end

  def word
    @word
  end

  def letters
    @letters
  end
end
