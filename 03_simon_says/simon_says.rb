#write your code here
def echo(word)
    return word
end

def shout(word)
    word.upcase
end

def repeat(word, num=2)
    arr = []
    num.times {arr << word}
    arr.join(" ")
end

def start_of_word(word, num)
    word[0...num]
end

def first_word(str)
    arr = str.split(" ")
    arr[0]
end

def titleize (str)

    arr = str.capitalize.split(" ")



    arr.each do |word|
        if word != "the" && word != "and" && word != "over"
            word.capitalize!
        end
    end
    arr.join(" ")
end
