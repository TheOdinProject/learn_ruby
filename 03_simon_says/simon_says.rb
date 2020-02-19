def echo(word)
    word
end

def shout(word)
    word.upcase
end

def repeat(word, num=2)
    "#{(word +" ")* num}".rstrip
end

def start_of_word(word, num)
    word.split("")[0...num].join("")
end

def first_word(word)
    word.split(" ")[0]
end

def titleize(title)
    little_words = ["and", "do", "the", "over"]

    title.split(" ").each_with_index.map{ |word, idx| 
        if idx == 0    
            word.capitalize
        elsif little_words.include?(word)
            word
        else
            word.capitalize
        end
    }.join(" ")
end
