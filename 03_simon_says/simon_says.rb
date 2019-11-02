#write your code here
def echo phrase
    phrase
end

def shout phrase
    phrase.upcase
end

def repeat phrase, *times
    builder = []
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

def start_of_word phrase, characters
    phrase.byteslice(0, characters)
end

def first_word phrase
    phrase.split(' ')[0]
end

def titleize phrase
    little_words = ["and", "of", 'a', "the", "over"]
    output = []
    words = phrase.split(' ')
    words.each_with_index do |word, index| 
        if index == 0 || little_words.index(word) == nil
            output.push word.capitalize
        else
            output.push word
        end
    end
    output.join(' ')
end
