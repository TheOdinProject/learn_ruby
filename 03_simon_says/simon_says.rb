#write your code here
def echo(str)
    return str
end

def shout(str)
    return str.upcase
end

def repeat(str, times=2)
    newstr = (str + " ")*times
    result = newstr.chomp(" ") 
    return result
end

def start_of_word(str, len=1)
    
    str[0,len]
end

def first_word(str)
    return str.partition(" ").first
end
    
def titleize(str)
    smallWords = ['and', 'the', 'over']
    newstr= str.split(" ")
    lngth = newstr.length
    
    i = 0
    while i<lngth
        if((smallWords.include? newstr[i] || newstr[i].lenght<3) && i != 0)
            result = newstr[i]
        else
            result = newstr[i].capitalize
        end
        
        newstr[i]=result

        i+=1
    end
    return newstr.join(" ")
end
