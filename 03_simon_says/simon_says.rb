def echo echo
    return echo
end

def shout word
    return word.upcase
end

def repeat (word, times=2) 
    return Array.new(times, word).join(" ")
end

def start_of_word (word, letter)
    array = []
    until letter == 0 do 
        array.push(word.split('')[letter-1])
        letter = letter - 1
    end
    return array.join("").reverse()
end

def first_word str
    return str.split()[0]
end

def titleize str
    words = str.split.map{|i| case i when "and", "over","the" then i
    else i.capitalize end}
    words.first.capitalize!
    words.join(" ")
end