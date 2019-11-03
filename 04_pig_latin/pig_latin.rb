#write your code here

def to_pig_latin word
    ending = ""
    copy = word
    first_vowel_index = find_first_vowel copy
    puts first_vowel_index
    puts word
    if (phoneme copy) != nil
        length = (phoneme copy).length
        return (word.byteslice(length, word.length - length) + (phoneme word) + "ay")
    elsif phoneme_before_vowel? word, first_vowel_index
        ending = word.byteslice(0, first_vowel_index + 1) + "ay"
        word = word.byteslice(first_vowel_index + 1,
                              word.length - first_vowel_index - 1)
    elsif first_vowel_index == 0
        ending = "ay"
    else
        ending = word.byteslice(0, first_vowel_index) + "ay"
        word = word.byteslice(first_vowel_index,
                              (word.length - first_vowel_index))
    end
    word + ending
end

def phoneme_before_vowel? word, first_vowel
    phonemes = ["qu"]
    slice = word.byteslice(0, first_vowel + 1)
    phonemes.each do |sound|
        if slice.include? sound
            return true
        end
    end
    return false
end

def phoneme word
    phonemes = ["qu"]
    phonemes.each do |sound|
        if word.byteslice(0, sound.length).eql? sound
            return sound
        else
            return nil
        end
    end
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
    output = []
    words = phrase.split(' ')
    words.each {
        |word| 
        output.push to_pig_latin word
    }
    output.join ' '
end
#puts phoneme_before_vowel? "square", find_first_vowel("square")
#puts phoneme "apple"
