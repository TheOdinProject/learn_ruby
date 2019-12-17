class Book

  def title= word
    words = word.split(" ")
    i = 0
    @title = ""
    while i<words.length
      if words[0] != words[i] && words[i] != "and" && words[i] != "in" && words[i] != "the" && words[i] != "of" && words[i] != "a" && words[i] != "an"
        words[i] = words[i].capitalize
      elsif words[0] == words[i]
        words[i] = words[i].capitalize
      end
    i += 1
    end
    @title = words.join(" ")
  end

  def title
    @title
  end

end
