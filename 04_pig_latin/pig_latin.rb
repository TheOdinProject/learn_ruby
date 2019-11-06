def translate(words)
    
    many_words = words.split(" ")
    finally = []

    if many_words.length == 1
        return pig_latin_one_word(words)
    else        
        many_words.each do |word|
            finally << pig_latin_one_word(word)
        end
    end   

    return finally.join(" ")
 
end


def pig_latin_one_word(word)
    vowels = "aeiou"
    translated = ""

    if word.include?("qu")
        location = word.index("qu")
        translated = word[location + 2..-1] + word[0...location] + "quay"
        return translated
    else    
        word.each_char.with_index do |char, i|
            if vowels.include?(char) && (i == 0)
                translated = word + "ay"
                return translated
            elsif vowels.include?(char)
                translated = word[i..-1] + word[0...i] + "ay"
                return translated
            end    
        end
    end
end