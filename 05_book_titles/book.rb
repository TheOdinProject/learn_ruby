class Book

    def initialize()
        
    end   

    def title
        @title
    end 

    def title=(string)
        words = string.split(" ")
        finally = [];
        dont_capitalize = ["the", "a", "an", "in", "of", "and"]

        words.each_with_index do |word, i|
            if !dont_capitalize.include?(word) || (i == 0)
                finally << word.capitalize
            else
                finally << word
            end 
        end   
        
        @title = finally.join(" ")
    end


end
