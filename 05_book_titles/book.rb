class Book
# write your code here
  def initialize
    @title = ""
  end

  def title= title
    @title = title
  end
  def title
    words = @title.split(' ')
    title = ""
    word_count = 1
    words.each do |w|
      if word_count == 1
        title += w.capitalize + " "
        word_count += 1
      elsif is_conj?(w) || is_prep?(w) || is_article?(w)
        title += w + " "
      else  
        title += w.capitalize + " "
      end
    end
    return title[0...title.length - 1]
  end
  
  private

  def is_conj? word
    if word == "and" || word == "but" || word == "or"
      return true
    end
    return false
  end

  def is_prep? word
    if word == "in" || word == "of"
        return true
    end
    return false
  end

  def is_article? word
    if word == "the" || word == "a" || word == "an"
        return true
    end
    return false
  end
end
