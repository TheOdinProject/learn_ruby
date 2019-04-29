class Book
        attr_reader :title
    
    def title=(word)

        small_words = ['and', 'in', 'the', 'is', 'of', 'a', 'an']
        count = 0
       
        @title = word.split.map{|word|
            
            if small_words.include?(word) && count != 0
                count += 1
                word
            else
                count += 1
                word = word.capitalize
            end
            
    }.join(' ')
    
    end

end
