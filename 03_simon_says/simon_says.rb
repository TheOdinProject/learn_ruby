
def echo(word)
    p word
end

def shout(word)
    p word.upcase
end

def repeat(word , num_of_times = 2)
    sentence = ''
    i = 0
    until i == num_of_times
        if i == num_of_times - 1
            return sentence += word
        end
        sentence += word + ' '
        i += 1
    end

    p sentence
end


def start_of_word(word, index_of_word)
    p word[0...index_of_word]
end

def first_word(string)
    p string.split[0]
end

def titleize(string)
    words = string.split
    dont_cap = ['and', 'over', 'the']
    words.map! do |word|
        if word == words[0]
            word.capitalize
        elsif dont_cap.include?(word)
            word
        else
            word.capitalize
        end
    end
    words.join(' ')
end
