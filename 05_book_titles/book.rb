class Book
# write your code here
    @@no_capitals = ["the", "a", "an", "of", "in", "and"]
    
    def title=(title)
        @title = title
    end
    
    def title
        capitalized_title = []
        
        #Capitalize first word
        @words = @title.split(" ")
        capitalized_title << @words[0].capitalize
        @words.shift
        
        #Loop through remaining words, check if word needs captialized or not
        (@words.length).times do |i|
            if @@no_capitals.include? @words[i]
                capitalized_title << @words[i]
            else
                capitalized_title << @words[i].capitalize
            end
        end
        
        capitalized_title.join(" ")
    end
        
end
