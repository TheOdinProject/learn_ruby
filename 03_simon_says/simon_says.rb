#write your code here
def echo(string)
    string
end

def shout(string)
    string.upcase
end

def repeat(string, number = 2)
    combined_string = (string + " ") * number
    combined_string = combined_string.strip
end

def start_of_word(string, number)
    string.slice(0..(number - 1))
end

def first_word(string)
    array = string.split(' ')
    array[0]
end

def titleize(string)
    ignore_words = %w(and over the)
    string.capitalize!
    string.split.map do |word|
        ignore_words.include?(word) ? word : word.capitalize
    end.join(' ') 
end