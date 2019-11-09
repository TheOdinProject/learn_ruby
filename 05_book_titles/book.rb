class Book
  attr_accessor :title

  def title=(new_title)
    exceptions = ['and', 'in', 'of', 'the', 'a', 'an']
    @title = new_title.split().map.with_index{|word, i|
      if (exceptions.include? word and i != 0)
        word
      else word.capitalize end}.join(" ")
  end

end

