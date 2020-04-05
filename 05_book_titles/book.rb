class Book

    attr_accessor :title

    def initialize
        @lowercase = ['a', 'an', 'and', 'the', 'in', 'of']
    end

    def title
        altered = @title.split(' ').each do |word|
            unless @lowercase.include?(word)
                word.capitalize!
            end
        end
        altered.first.capitalize!
        altered.join(' ')
    end

end
