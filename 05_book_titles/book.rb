class Book
    attr_accessor :title
    
    def title 
        arr = @title.split(" ")
        new_arr = []
        bad = ["and", "to", "in", "the", "of", "a","an"]
        arr.each do |word|
            if !bad.include? (word)
                new_arr << word.capitalize
            else
                new_arr << word 
            end
        end
        new_arr[0].capitalize!
        new_arr.join(" ")
    end
end



