class Book
    attr_accessor :title, :lowercase_words
    def lowercase_words
        @lowercase_words = ["the", "a", "an", "and", "in", "of"]
    end

    def initialize(title)
        @title = title.split(" ").each_with_index.map_with_index { |word, idx|
            if idx == 0 || !@lowercase_words.include?(word)
                word.capitalize
            else
                word
            end
        }

        @title
    end
end
