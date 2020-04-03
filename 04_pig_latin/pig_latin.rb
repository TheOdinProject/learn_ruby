#write your code here
def translate(english)
    a = english.split
    b = a.map {|word| piglatinize_word(word)}
    b.join(' ')
end

def piglatinize_word(word)
    first_letter = word[0].downcase
    if ["a", "e", "i", "o", "u"].include?(first_letter)
        # piglatinize word that starts with a vowel
        "#{word}ay"
    else
        # piglatinize word that starts with a consonant
    consonants = []
    a = word.chars
    consonants = a.shift

    while (["a", "e", "i", "o", "u"].include?(a[0]) == false) 
        consonants << a.shift
    end

    if (["u"].include?(a[0]) == true) and consonants.include?("q") == true 
        consonants << a.shift 
    end
    
    "#{a.join + consonants + "ay"}"
    end
end