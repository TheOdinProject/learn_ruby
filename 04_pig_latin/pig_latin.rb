#write your code here
def find_vowel(word)

    vowels = [ "a", "e", "i", "o", "u" ]

    if (vowels.include? word[0])
        newstr=word+"ay"
    else
        const=""
        len=word.length
        i=0
    
        while i<len
            if (word[i]=="q" && word[i+1]=="u")
                const+="qu"
                i+=1
            elsif (!vowels.include? word[i])
                const+=word[i]
            else
                break
            end
            i+=1
        end
    
        newstr=word[i..-1]+const+"ay"
    end
    
    return newstr
end

def translate (str)
    word=str.split()
    i=0
    old=""
    
    for miniword in word do

        newstr=find_vowel(miniword)
        i+=1
    
        if (i==1)
            newstr=newstr
            old=newstr
        else        
            newstr=  old+" "+ newstr
            old= newstr
        end
    end
    
    return newstr
end
