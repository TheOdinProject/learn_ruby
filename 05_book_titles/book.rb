class Book

  def title=(word)

  	little_words = ["a", "an", "the", "at", "by", "for", "in", "of",
  					"on","over", "to", "up", "and", "as", "but", "it", "or", "and", "nor"]
  	title = word.split.map { |e| little_words.include?(e) ? e: e.capitalize }
  	title[0] = title[0].capitalize
  	@title = title.join(" ")

  end

  def title
    @title
  end
end