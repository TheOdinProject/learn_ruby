def translate input
    a = input.split(' ')
    b = a.map {|word| pigLatin(word)}
    c = b.join(' ')
end

def pigLatin word
    vowels = ['a','e','i','o',]
    consonants = [ ]
    while !vowels.include?(word.split(//)[0])
    
        if !vowels.include?(word[0])
            consonants << word[0]

            if !vowels.include?(word[1])
                consonants << word[1]

                if !vowels.include?(word[2])
                    consonants << word[2]
                end
            end
            return word[consonants.length..-1] + consonants.join + 'ay'
        end
        
    end
        return word + 'ay'
end