class Book
  attr_accessor :title
  
  def title
    book = @title.split(" ")
    words_no_cap = ["and", "over", "the", "in", "of","a","an"]
    book[0].capitalize!
    book_title = book.map {|book|
    if words_no_cap.include?(book)
     book
    else
      book.capitalize
    end}.join(" ")
  end
end

