class Book
  attr_reader :title

  def title=(book)
    words = book.split.map do |word|
      if %w[the and over a an in of].include?(word)
        word
      else
        word.capitalize
      end
    end
    words.first.capitalize!
    @title = words.join(' ')
  end
end
