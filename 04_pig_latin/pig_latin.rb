def vowel(s)
    (s =~ /[aeiouAEIOU]/) != nil
end

def convert(word)
    while !vowel(word[0])
        if word[0,2].downcase =='qu'
            word = word + word[0,2]
            word = word[2..word.length]
        else
            word = word+word[0]
            word = word[1..word.length]
        end
    end
    word = word +'ay'
end

def translate(words)
  wordArray = words.split
  wordArray.map! {|w| convert(w)}.join' '
end