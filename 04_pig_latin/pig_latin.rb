#write your code here
def translate(wor)
    vowels = ["a","e","i","o","u"]
    consonant = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'y', 'z']
    phoneme = ['sch', 'qu', 'squ']
    places = 0
    is_vowel = false
    is_consonant = false
    words = wor.split(" ")
    addWords = []
    
    for word in words
        
        two_letters = word[0] + word[1]
        three_letters = word[0] + word[1] + word[2]
    
        translated_word = ""
        letters = word.split("")
        first_letter = word[0]
        
        if vowels.include? first_letter
            is_vowel = true
            places = 1
            (letters.length-1).times do |i|
                if vowels.include? letters[i+1]
                    places += 1
                else
                    break
                end
            end
        end
        
        if is_vowel
            is_vowel = false
            (letters.length).times do |i|
                translated_word += letters[i]
            end
            translated_word += "ay"
            addWords << translated_word
            next
        end
        
        if consonant.include? first_letter
            is_consonant = true
            places = 1
            (letters.length-1).times do |i|
                if consonant.include? letters[i+1]
                    places += 1
                else
                    break
                end
            end
            if phoneme.include? two_letters
                places = 2
            end
            if phoneme.include? three_letters
                places = 3
            end
        end

        if is_consonant
            is_consonant = false
            (letters.length-places).times do |i|
                translated_word += letters[i+places]
            end
            places.times do |i|
                if places == i
                    break
                end
                translated_word += letters[i]
            end
            translated_word += "ay"
            addWords << translated_word
            next
        end
        
    end
    
    return addWords.join(" ")
    
end
