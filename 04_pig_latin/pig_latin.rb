def translate (input)
    pig_latin = input.split(' ').each do |word|
        regexp = /[aeiouy]/i
        index = word.index(regexp)
        if index != 0
            if word[index-1] == 'q'
                consonant = word.slice!(0, index+1)
            else 
                consonant = word.slice!(0, index)
            end
            word << consonant
        end
        word << 'ay'
    end
    pig_latin.join(' ')
end
