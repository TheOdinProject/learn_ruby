#write your code here
def echo(value)
    return value
end

def shout(value)
    return value.upcase
end

def repeat(word, count=2)
    repeatedWord = []
    count.times do
        repeatedWord << word
    end
    return repeatedWord.join(" ")
end

def start_of_word(word, index)
    letters = []
    index.times do |i|
        letters << word[i]
    end
    return letters.join("")
end

def first_word(word)
    return word.split(" ").first
end

def titleize(name)
    return name.capitalize
end
