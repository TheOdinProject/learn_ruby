class Book
  def title
    @title
  end

  def title=(title)
    
    @title = title.split.map(&:capitalize).join(' ')
  end

end
