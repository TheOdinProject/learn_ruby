#write your code here
def echo(str)
    return str
end 

def shout(str)
    return str.upcase
end

def repeat(str, num=2)
    new_repeat = (str + " ")* num
    return new_repeat.strip
end

def start_of_word(str, num)
    return str[0..num-1]
end

def first_word(str)
    sepearted = str.split
    return sepearted[0]
end

def titleize(str)
    str.capitalize!
    
    words_no_cap = ['and', 'is', 'the', 'over']

    phrase = str.split(" ").map {|word|
        if words_no_cap.include?(word)
            word
        else
            word.capitalize
        end
    }.join(" ")
    phrase  
end

