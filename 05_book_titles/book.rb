class Book
# write your code here
    attr_reader :title
    def title=(title)
        little_words = ["and", "of", 'a', "the", "over", "in","an"]
        output = []
        title = title.split(' ')
        title.each_with_index do |word, index| 
            if index == 0 || little_words.index(word) == nil
                output.push word.capitalize
            else
                output.push word
            end
        end
        @title = output.join(' ')
    end
end
