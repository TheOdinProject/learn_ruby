def translate(string)
    string.split(" ").map { |word|
        translate_word(word)
    }.join(" ")
end

def translate_word(word)
    vowels = "aeiou"
    if vowels.include?(word[0])
        "#{word}ay"
    elsif word[0..2] == "sch"
        translate_word( word[3..-1]+word[0..2] )
    elsif word[0..1] == "qu"
        translate_word( word[2..-1]+word[0..1] )
    else
        translate_word( word[1..-1]+word[0] )
        # "#{word[1..-1]+word[0]}ay"
    end
end