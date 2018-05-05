def echo(string)
    string
end

def shout(string)
    string.upcase
end

def repeat(string, int = 2)
    string  + (" #{string}" * (int - 1))
end

def start_of_word(string, int)
    string[0..(int - 1)]
end

def first_word(string)
    word_array = string.split(" ")
    word_array[0]
end

def titleize(string)
    character_array = string.split(" ")
    character_array.each {|item| 
        unless ((item.length < 5) && ( item != character_array.first && item != character_array.last ))
            item.capitalize!
        end
    }
    character_array.join(" ")
end