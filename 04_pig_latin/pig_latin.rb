#write your code here

def to_pig_latin word
    ending = ""
    first_vowel_index = find_first_vowel word
    if phoneme word != nil
        length = phoneme word.length
        return word.byteslice(length, word.length - length) 
                                + phoneme + "ay"
    end
    if first_vowel_index == 0
        ending = "ay"
    else
        ending = word.byteslice(0, first_vowel_index) + "ay"
        word = word.byteslice(first_vowel_index,
                              (word.length - first_vowel_index))
    end
    word + ending
end

def phoneme word
    phonemes = ['qu']
    phonemes.each { 
        |sound|
        if word.byteslice(0, sound.length).eql? sound
            return sound
        end
    }
end

def find_first_vowel word
    vowels = ['a','e','i','o','u']
    characters = word.split('')
    characters.each_with_index do |char, index|
        if vowels.include? char
            return index
        end
    end
end

def translate phrase
    words = phrase.split(' ')
    words.map {|word| to_pig_latin word}.join(' ')
end
puts phoneme "quest"
puts phoneme "apple"
