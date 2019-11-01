#write your code here
def echo phrase
    phrase
end

def shout phrase
    phrase.upcase
end

#def repeat phrase
#    phrase + ' ' + phrase
#end

def repeat phrase, *times
    if times.empty?
        count = 2
        #return phrase + ' ' + phrase
    else
        count = times[0]
    end
    for i in 0...count
        builder.push(phrase)
    end
    builder.join(' ')
end
