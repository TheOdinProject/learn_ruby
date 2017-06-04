class Book
    $exclude = ['and','or','an','a','in','the','of']
    attr_accessor :title

    def title
        words = @title.split
        words.map!.with_index do |word, index|
            if $exclude.include?(word) && index != 0
                word
            else
                word.capitalize
            end
        end
        words.join(' ')
    end

end
