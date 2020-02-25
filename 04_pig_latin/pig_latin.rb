def translate(word)
    ls = word.split(" ")
    ls.map! do |ele|
        translate_one_word(ele)
    end
    ls.join(" ")
end

def translate_one_word(word)
    vowel = ["a","e","i","o","u"]

    if vowel.include?(word[0].downcase)
        return word + "ay"
    elsif word[0..1] == 'qu'
        translate(word[2..-1] + word[0..1])
    else
       new_word = word[1..-1] + word[0]
       translate(new_word)
    end
end
