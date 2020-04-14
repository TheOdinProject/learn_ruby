#write your code here
def echo(string)
    string
end

def shout(string)
    string.upcase!
end

def repeat(string, n=1)
    if n == 1
        return "#{string} #{string}"
    else
        return_string = string
        (n-1).times do
            return_string += " #{string}"
        end
    end
    return_string
end

def start_of_word(string, n=1)
    string[(0...n)]
end

def first_word(word, n=1)
    word.split(' ')[0]
end

def titleize(string)
    dont = ["the","and", "as", "as", "if", "as", "long", "as", "at", "but", "by", "even", "if", "for", "from", "if", "if", "only", "in", "into", "like", "near", "now", "that", "nor", "of", "off", "on", "on", "top", "of", "once", "onto", "or", "out", "of", "over", "past", "so", "so", "that", "than", "that", "till", "to", "up", "upon", "with", "when", "yet"]
    

    first = string.split(' ')[0].capitalize
    last = string.split(' ')[-1].capitalize
    middle = string.split(' ')[(1..-2)]

    middle.each { |word|
        if dont.include?(word)
            word
        else
            word.capitalize!
        end
    }
    if string.split(' ').length < 2
        return string.split(' ')[0].capitalize
    elsif string.split(' ').length == 2
        return "#{first} #{last}"
    else
        return "#{first} #{middle.join(' ')} #{last}"
    end
end