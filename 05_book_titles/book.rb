class Book
  attr_reader :title

  def title=(title)
    articles = %w(a an the)
    conjunctions = %w(and or)
    prepositions = %w(in of)
    words_to_upcase = %w(i)
    words_to_downcase = articles + conjunctions + prepositions
    words = title.downcase.split.map do |word|
      if (words_to_downcase.include? word)
        word.downcase
      elsif (words_to_upcase.include? word)
        word.upcase
      else
        word.capitalize
      end
    end

    words.first.capitalize!
    @title = words.join(" ")
  end
end
