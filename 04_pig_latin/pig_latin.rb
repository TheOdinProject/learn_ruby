#write your code here
 def voyelle( word)
   word[/^[aeiou]+/i] || ""
end

def consonant(word)
    word[/^[^aeiou]?qu|^[^aeiou]+/i] || ""
end

def capitalize? (word)
  word.capitalize == word
end



def translate_one_word(word)
  if voyelle(word).length  >= 1
     word + "ay"
  elsif consonant(word).length >= 1
    w =   word[consonant(word).length..-1]
    w.capitalize! if capitalize?(word)
    w  + consonant(word).downcase  + "ay"
  end
end


def translate(words)
  words.split(" ").map {|word| translate_one_word(word)}.join(" ")
end
