def echo(word)
    word
end

def shout(word)
    word.upcase
end

def repeat(word,a=2)
    ([word]*a).join(' ')
end

def start_of_word(word,a=1)
    word[0,a]
end

def first_word(word)
    word.split.first
end

def titleize(sentence)
    sentence.capitalize
    no_cap = ["and", "or", "over", "to", "the", "a", "but"]
    sentence.split(" ").map { |word| no_cap.include?(word) ? word : word.capitalize }
    
end