def echo(phrase)
    p phrase 

end  


def shout(phrase)
    p phrase.upcase

end

def repeat(phrase, num=2)
    finally = ""
    
    if num < 2
        p phrase 
    elsif num == 2
        p phrase + " " + phrase
    else     
        finally = phrase
        (num - 1).times do 
            finally += " " + phrase 
        end

        p finally
    end  
end

def start_of_word(string, index)
    return string[0...index]
end

def first_word(sentence)
    finally = sentence.split(" ")
    return finally[0]
end

def titleize(string)
    words = string.split(" ")
    little_words = ["the", "over", "to", "on", "of", "for", "and"]

    if words.length < 2
        return string.capitalize 
    else              
        words.each_with_index do |word, i|
            if !little_words.include?(word) || i == 0 
            word.capitalize!
            end    
        end
        return words.join(" ")
    end   
end   

