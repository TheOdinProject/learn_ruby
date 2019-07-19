class Book
# write your code here
    attr_accessor :title

    def title=(title)
        @title=format_title(title)
    end

    private

    def format_title(title)
        title_word=title.split(" ")
        new_title=""
        no_capitalize = ["a", "the", "an", "and", "in", "of"]
        i=0
        for word in title_word do
            if (!no_capitalize.include? word)
                new_title_word=word.capitalize
                new_title= new_title + " " + new_title_word
            else
                new_title_word=word
                new_title= new_title + " " + new_title_word
            end

        end
        
        new_title=new_title.strip
        new_title[0]=new_title[0].capitalize
        return new_title
    end
end
