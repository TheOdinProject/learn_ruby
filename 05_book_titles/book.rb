class Book
  
  def titleize (book_name)
    book_name.capitalize!
    small_words = ["and", "the", "a", "an", "in", "of"]
    capped_name = book_name.split.map! {|word| 
      if small_words.include?(word)
        word
      else
        word.capitalize
      end
    }.join(" ")
    return capped_name
  end

  def title=(t)
    @title = titleize(t)
  end

  def title
    @title
  end

end
