class Book
   
    attr_reader :title

    def title=bookname
        small_words = ['the','a','an','is','in','at','of','and']
        @title = bookname.capitalize.split.map {|idx| small_words.include?(idx)? idx :idx.capitalize}.join' '
    end
end