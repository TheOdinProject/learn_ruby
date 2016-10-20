class Book
  attr_reader :title

  def initialize(title=nil)
    @title = title && title.capitalize!
  end

  def title=(new_title)
    array = new_title.split(" ")
    array.each_with_index do |word, i|
      if i == 0
        word.capitalize!
      else
        unless ['a', 'the', 'on', 'and', 'over', 'of', 'for', 'through', 'in', 'an'].include?(word)
          word.capitalize!
        end
      end
    end
    @title = array.join(" ")
  end

end

#
# @book = Book.new
# @book.title = "inferno"
