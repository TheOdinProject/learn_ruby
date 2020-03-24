class Book
    
    attr_accessor :title

    def title 
        lowerCase = %w(and in over the of a an)
        return @title.capitalize.split.map{|w| lowerCase.include?(w) ? w : w.capitalize}.join(' ')
    end
end