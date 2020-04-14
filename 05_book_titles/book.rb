class Book
# write your code here
    attr_reader :title
    def title= (book_title)
        dont = ["the", "and", "a", "as", "an", "if", "long", "at", "but", "by", "even", "for", "from", "only", "in", "into", "like", "near", "now", "that", "nor", "of", "off", "on", "top", "once", "onto", "or", "out", "over", "past", "so", "that", "than", "till", "to", "up", "upon", "with", "yet"]
    
        first = book_title.split(' ')[0].capitalize
        last = book_title.split(' ')[-1].capitalize
        middle = book_title.split(' ')[(1..-2)]

        middle.each { |word|
            if dont.include?(word)
                word
            else
                word.capitalize!
            end
        }
        if book_title.split(' ').length < 2
            @title = book_title.split(' ')[0].capitalize
        elsif book_title.split(' ').length == 2
            @title = "#{first} #{last}"
        else
            @title = "#{first} #{middle.join(' ')} #{last}"
        end
    end
end