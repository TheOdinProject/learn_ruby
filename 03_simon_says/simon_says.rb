def echo(word)
    return word
end

def shout(word)
    return word.upcase
end

def repeat(word, t=2)
    ls = []
    t.times do
        ls.push(word)
    end
    ls.join(" ")
end

def start_of_word(word, n)
    word[0...n]
end

def first_word(word)
    ls = word.split(" ")
    ls[0]
end

def titleize(word)
    ls = word.split(" ").map do |word| 
        if (word != "and") and (word != "the") and (word != "over")
            word.capitalize
        else
            word
        end
    end
    ls[0] = ls[0].capitalize
    ls.join(" ")
end